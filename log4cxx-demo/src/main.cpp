#include <log4cxx/logmanager.h>
#include <log4cxx/basicconfigurator.h>
#include <log4cxx/logger.h>

int main(int argc, char **argv) {
    // 1. Configure Log4cxx to output to the console
    log4cxx::BasicConfigurator::configure();

    // 2. Get a logger instance
    auto logger = log4cxx::LogManager::getLogger("log4cxxDemo");

    // 3. Log messages
    LOG4CXX_INFO(logger, "Hello, log4cxx world! This is a simple demo application.");
    LOG4CXX_DEBUG(logger, "This is a debug message from the demo application.");
    LOG4CXX_WARN(logger, "This is a warning message from the demo application.");
    LOG4CXX_ERROR(logger, "This is an error message from the demo application.");

    // 4. Shutdown Log4cxx
    log4cxx::LogManager::shutdown();
    
    return 0;
}
