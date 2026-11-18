import InitE
import InitECandidate.Solver.MemSafe.Init.FinalK

namespace InitE.Challenge
open Flapjack

/-- The baseline ROM (bootstrap, data initializer, literal image), claimed at a finite score. -/
def submission : InitE.Submission :=
  InitECandidate.Solver.Final.withScore InitE.baselineSubmission (.finite 21164250142749658042809119380987031628899678981934619876039710317818046678774727884927740976990816508847809259)

/-- The certified step bound. -/
def claimedScore : InitE.NatE := .finite 21164250142749658042809119380987031628899678981934619876039710317818046678774727884927740976990816508847809259

theorem certificate : InitE.Certificate submission claimedScore :=
  InitECandidate.Solver.MemSafe.Init.certificate_lit

end InitE.Challenge

#print axioms InitE.Challenge.certificate
