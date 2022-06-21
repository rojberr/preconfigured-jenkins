pipelineJob('pipelineJob') {
    definition {
        cps {
            script(readFileFromWorkspace('pipelineJob.groovy'))
            sandbox()
        }
    }
}
pipelineJob('remote-job') {
    definition {
        cpsScm {
            scm {
                git {
                    remote {
                        url = 'https://github.com/rojberr/certgen'
                    }
                    branch 'master'
                }
            }
        }
    }
}