@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 70, capacity: 94, latency: 15, risk: 12, weight: 7)
        precondition(Policy.score(signalcase_1) == 135)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 91, capacity: 74, latency: 16, risk: 19, weight: 5)
        precondition(Policy.score(signalcase_2) == 112)
        precondition(Policy.classify(signalcase_2) == "review")
        let signalcase_3 = Signal(demand: 70, capacity: 94, latency: 15, risk: 5, weight: 7)
        precondition(Policy.score(signalcase_3) == 170)
        precondition(Policy.classify(signalcase_3) == "review")
        let domainReview = DomainReview(signal: 60, slack: 41, drag: 29, confidence: 88)
        precondition(DomainReviewLens.score(domainReview) == 162)
        precondition(DomainReviewLens.lane(domainReview) == "ship")
    }
}
