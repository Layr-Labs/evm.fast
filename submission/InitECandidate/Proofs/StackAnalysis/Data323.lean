import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody323_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody323_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody323_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody323_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody323_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody323_5 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_3 optimizedBody323_4

def optimizedBody323_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_1 optimizedBody323_5

def optimizedBody323_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_2 optimizedBody323_6

def optimizedBody323_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody323_9 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody323_7 optimizedBody323_8

def optimizedBody323_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody323_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody323_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody323_13 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 6) optimizedBody323_7 optimizedBody323_8

def optimizedBody323_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 8#64))

def optimizedBody323_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody323_16 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody323_7 optimizedBody323_8

def optimizedBody323_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody323_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_17 optimizedBody323_5

def optimizedBody323_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_2 optimizedBody323_18

def optimizedBody323_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_2 optimizedBody323_19

def optimizedBody323_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_16 optimizedBody323_20

def optimizedBody323_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_15 optimizedBody323_21

def optimizedBody323_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_14 optimizedBody323_22

def optimizedBody323_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_10 optimizedBody323_23

def optimizedBody323_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_2 optimizedBody323_24

def optimizedBody323_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_2 optimizedBody323_25

def optimizedBody323_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_13 optimizedBody323_26

def optimizedBody323_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_12 optimizedBody323_27

def optimizedBody323_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_11 optimizedBody323_28

def optimizedBody323_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_10 optimizedBody323_29

def optimizedBody323_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_2 optimizedBody323_30

def optimizedBody323_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_2 optimizedBody323_31

def optimizedBody323_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_9 optimizedBody323_32

def optimizedBody323_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_1 optimizedBody323_33

def optimizedBody323_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody323_0 optimizedBody323_34

def optimized323 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(323, 2, optimizedBody323_35)
end InitECandidate.Proofs.StackAnalysis
