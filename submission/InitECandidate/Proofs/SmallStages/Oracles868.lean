import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source868
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles868
def optimizedBody868_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody868_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody868_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 4#64)

def optimizedBody868_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody868_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody868_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody868_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody868_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_5 optimizedBody868_6

def optimizedBody868_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_4 optimizedBody868_7

def optimizedBody868_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_3 optimizedBody868_8

def optimizedBody868_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody868_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody868_9 optimizedBody868_10

def optimizedBody868_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody868_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_12 optimizedBody868_7

def optimizedBody868_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_3 optimizedBody868_13

def optimizedBody868_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_3 optimizedBody868_14

def optimizedBody868_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_11 optimizedBody868_15

def optimizedBody868_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_2 optimizedBody868_16

def optimizedBody868_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_1 optimizedBody868_17

def optimizedBody868_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody868_0 optimizedBody868_18

def oracle868 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 (Flapjack.Spt.ls 1))
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
      Flapjack.Spt.ln))
def optimized868 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(868, 2, optimizedBody868_19)
end InitECandidate.Proofs.SmallStages.Oracles868
