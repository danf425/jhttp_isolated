package io.harness.jhttp.processor;

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;

import io.harness.jhttp.api.HttpRequest;
import io.harness.jhttp.api.HttpResponse;
import io.harness.jhttp.api.RequestProcessor;

import static io.harness.jhttp.LambdaUtils.curry;

/**
 * This processor renders the {@code index.htm[l]} file, if it exists in the requested directory.
 * 
 *
 */
public class DirectoryIndex implements RequestProcessor {

    private static final String[] INDEX_FILE_NAMES = new String[] { "index.html", "index.htm" };

    @Override
    public boolean process(HttpRequest request, HttpResponse response) {
        final Path directory = request.resolvePath();
        if (!Files.isDirectory(directory)) {
            return false;
        }

        return Arrays.stream(INDEX_FILE_NAMES)
            .map(directory::resolve)
            .filter(Files::exists)
            .findFirst()
            .map(curry(StaticFile::serveFile, response))
            .orElse(false);
    }
}
