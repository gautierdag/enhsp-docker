# enhsp-docker

ENHSP solver docker image

Uses the ENHSP planner provided here <https://gitlab.com/enricos83/ENHSP-Public/> and compiles it to both AMD64 and ARM64 architectures.

Released at <https://hub.docker.com/r/gautierdag/enhsp>

## Example

```bash
docker run --rm -v $(pwd):/data gautierdag/enhsp -o /data/domain.pddl -f /data/problem.pddl
...
Plan-Length:50
Metric (Search):50.0
Planning Time (msec): 27
Heuristic Time (msec): 8
Search Time (msec): 25
Expanded Nodes:51
States Evaluated:51
Number of Dead-Ends detected:0
Number of Duplicates detected:148
```
