# reflection

When it came to the specific tooling and configuration approach that I went with to containerise
the application. I mostly tried to follow the approach that was provided in the workshop lecture
during the previous week. Then I would only alter the needed segments where it became
relevant to the specific application. For example, I had provided a specific version for the node
that the primary image of the application would be based on due to two things: One would be
that future releases of node might have detrimental effects when it came to running the
application, so locking in a version that actually works would be better for the long run. I also
chose the alpine version as it would provide what is necessary to run the application without
unnecessary overhead. A big deviation from the workshop would be the exclusion of mongodb
from the yml-compose section. The main reason is due to the database existing on the cloud on
Atlas, which the application can access by itself without the need to containerize MongoDB. For
security reasons and as standard practice, certain variables needed to run the application are
missing from the public release. As for notable roadblocks during the whole process, I was
having issues regarding not seeing the books on the webpage when launching the application
even while I was connected to MongoDB. It turned out that I was missing a specific database
name, which after I added, fixed the issue. There was a final issue when it came to checking the
running container with docker compose up, which was crashing because it was saying that port
3000 was “already in use”. It turns out that I forgot to stop running the non-Dockerized version of
the application from before. After stopping it, the dockerized application was working fine.The
most challenging aspect about the task was about the networking boundaries and how my
physical Mac, the Docker container, and the cloud database all locate and communicate with
one another on a theoretical basis. On the other hand, the most rewarding part was seeing the
final application launch and work properly after setting up the dockerization
