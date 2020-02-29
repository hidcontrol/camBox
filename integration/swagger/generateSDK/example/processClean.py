import camRestClient

if __name__ == '__main__':

    camRestClient.Configuration().username = 'demo'
    camRestClient.Configuration().password = 'demo'

    oldDeployments = camRestClient.DeploymentApi().get_deployments()

    for i in oldDeployments:
        camRestClient.DeploymentApi().delete_deployment(id=i["id"], id2=i["id"], cascade="true")
