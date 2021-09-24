class JenkinsfileRunner < Formula
    desc "A command line tool to run Jenkinsfiles"
    homepage "https://github.com/henryborchers/jenkinsfile-runner"
    head "https://github.com/jenkinsci/jenkinsfile-runner.git", tag: "1.0-beta-30"

    bottle :unneeded
    depends_on "openjdk"
    depends_on "maven"

    def install
        system "mvn package"
        libexec.install Dir["*"]
        bin.install_symlink libexec/"app/target/appassembler/bin/jenkinsfile-runner"
    end
end
