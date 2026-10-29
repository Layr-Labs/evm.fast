import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody644_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody644_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744069414584321#64)

def optimizedBody644_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 0#64)

def optimizedBody644_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 4294967295#64)

def optimizedBody644_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744073709551615#64)

def optimizedBody644_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody644_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 44), (8, 46), (4, 48), (10, 50), (6, 52)]

def optimizedBody644_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (4, 48), (10, 50), (6, 52)]

def optimizedBody644_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody644_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_7 optimizedBody644_8

def optimizedBody644_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody644_6, 644, 2)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody644_9, 644, 3))

def optimizedBody644_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody644_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody644_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody644_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody644_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody644_16 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody644_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_15 optimizedBody644_16

def optimizedBody644_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_4 optimizedBody644_17

def optimizedBody644_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_3 optimizedBody644_18

def optimizedBody644_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_2 optimizedBody644_19

def optimizedBody644_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_1 optimizedBody644_20

def optimizedBody644_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_14 optimizedBody644_21

def optimizedBody644_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_11 optimizedBody644_22

def optimizedBody644_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (10, 10), (6, 6)]

def optimizedBody644_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 2) optimizedBody644_23 optimizedBody644_24

def optimizedBody644_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody644_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody644_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_26 optimizedBody644_27

def optimizedBody644_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_11 optimizedBody644_28

def optimizedBody644_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_11 optimizedBody644_29

def optimizedBody644_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_25 optimizedBody644_30

def optimizedBody644_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_13 optimizedBody644_31

def optimizedBody644_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_12 optimizedBody644_32

def optimizedBody644_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_11 optimizedBody644_33

def optimizedBody644_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_10 optimizedBody644_34

def optimizedBody644_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_5 optimizedBody644_35

def optimizedBody644_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_4 optimizedBody644_36

def optimizedBody644_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_3 optimizedBody644_37

def optimizedBody644_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_2 optimizedBody644_38

def optimizedBody644_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_1 optimizedBody644_39

def optimizedBody644_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody644_0 optimizedBody644_40

def optimized644 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(644, 5, optimizedBody644_41)
end InitECandidate.Proofs.StackAnalysis
