import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody205_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (6, 6), (4, 4), (2, 2), (0, 0)]

def optimizedBody205_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16 18446744073709551615#64)

def optimizedBody205_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 14 18446744073709551615#64)

def optimizedBody205_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 18446744073709551615#64)

def optimizedBody205_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 18446744069414583343#64)

def optimizedBody205_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 0), (46, 8), (48, 4), (50, 2), (52, 6)]

def optimizedBody205_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(12, 2), (0, 44), (8, 46), (4, 48), (10, 50), (6, 52)]

def optimizedBody205_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (8, 46), (4, 48), (10, 50), (6, 52)]

def optimizedBody205_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody205_9 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_7 optimizedBody205_8

def optimizedBody205_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody205_6, 205, 2)) (some 106) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody205_9, 205, 3))

def optimizedBody205_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody205_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody205_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody205_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (6, 6), (4, 4), (2, 10)]

def optimizedBody205_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16)]

def optimizedBody205_16 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 117) ([0, 2, 4, 6, 8, 10, 12, 14, 16]) (none)

def optimizedBody205_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_15 optimizedBody205_16

def optimizedBody205_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_4 optimizedBody205_17

def optimizedBody205_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_3 optimizedBody205_18

def optimizedBody205_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_2 optimizedBody205_19

def optimizedBody205_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_1 optimizedBody205_20

def optimizedBody205_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_14 optimizedBody205_21

def optimizedBody205_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_11 optimizedBody205_22

def optimizedBody205_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(8, 8), (4, 4), (10, 10), (6, 6)]

def optimizedBody205_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.WordRegImm.reg 2) optimizedBody205_23 optimizedBody205_24

def optimizedBody205_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody205_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody205_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_26 optimizedBody205_27

def optimizedBody205_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_11 optimizedBody205_28

def optimizedBody205_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_11 optimizedBody205_29

def optimizedBody205_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_25 optimizedBody205_30

def optimizedBody205_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_13 optimizedBody205_31

def optimizedBody205_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_12 optimizedBody205_32

def optimizedBody205_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_11 optimizedBody205_33

def optimizedBody205_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_10 optimizedBody205_34

def optimizedBody205_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_5 optimizedBody205_35

def optimizedBody205_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_4 optimizedBody205_36

def optimizedBody205_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_3 optimizedBody205_37

def optimizedBody205_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_2 optimizedBody205_38

def optimizedBody205_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_1 optimizedBody205_39

def optimizedBody205_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody205_0 optimizedBody205_40

def optimized205 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(205, 5, optimizedBody205_41)
end InitECandidate.Proofs.StackAnalysis
