import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody592_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4), (44, 0), (46, 4), (48, 2)]

def optimizedBody592_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (4, 46), (46, 48)]

def optimizedBody592_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48)]

def optimizedBody592_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody592_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_2 optimizedBody592_3

def optimizedBody592_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody592_1, 592, 2)) (some 407) ([2]) (some (2, optimizedBody592_4, 592, 3))

def optimizedBody592_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody592_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody592_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 48#64))

def optimizedBody592_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody592_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody592_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48)]

def optimizedBody592_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_11 optimizedBody592_3

def optimizedBody592_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody592_10, 592, 4)) (some 408) ([2, 4]) (some (2, optimizedBody592_12, 592, 5))

def optimizedBody592_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody592_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody592_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48)]

def optimizedBody592_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (0, 44), (4, 46), (6, 48)]

def optimizedBody592_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46), (6, 48)]

def optimizedBody592_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_18 optimizedBody592_3

def optimizedBody592_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody592_17, 592, 6)) (some 468) ([2, 4]) (some (2, optimizedBody592_19, 592, 7))

def optimizedBody592_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody592_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody592_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody592_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_22 optimizedBody592_23

def optimizedBody592_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_15 optimizedBody592_24

def optimizedBody592_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_25

def optimizedBody592_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody592_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 2) optimizedBody592_26 optimizedBody592_27

def optimizedBody592_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (4, 4), (6, 6)]

def optimizedBody592_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_29

def optimizedBody592_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_30

def optimizedBody592_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_28 optimizedBody592_31

def optimizedBody592_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_15 optimizedBody592_32

def optimizedBody592_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_21 optimizedBody592_33

def optimizedBody592_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_34

def optimizedBody592_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_20 optimizedBody592_35

def optimizedBody592_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_16 optimizedBody592_36

def optimizedBody592_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_37

def optimizedBody592_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 44), (4, 46), (6, 48)]

def optimizedBody592_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_39

def optimizedBody592_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.reg 2) optimizedBody592_38 optimizedBody592_40

def optimizedBody592_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody592_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody592_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 40#64))

def optimizedBody592_45 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 4) optimizedBody592_26 optimizedBody592_27

def optimizedBody592_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody592_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_46 optimizedBody592_24

def optimizedBody592_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_47

def optimizedBody592_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_48

def optimizedBody592_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_45 optimizedBody592_49

def optimizedBody592_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_44 optimizedBody592_50

def optimizedBody592_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_14 optimizedBody592_51

def optimizedBody592_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_43 optimizedBody592_52

def optimizedBody592_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_42 optimizedBody592_53

def optimizedBody592_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_54

def optimizedBody592_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_41 optimizedBody592_55

def optimizedBody592_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_15 optimizedBody592_56

def optimizedBody592_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_14 optimizedBody592_57

def optimizedBody592_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_58

def optimizedBody592_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_13 optimizedBody592_59

def optimizedBody592_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_9 optimizedBody592_60

def optimizedBody592_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_8 optimizedBody592_61

def optimizedBody592_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_7 optimizedBody592_62

def optimizedBody592_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_6 optimizedBody592_63

def optimizedBody592_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_5 optimizedBody592_64

def optimizedBody592_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody592_0 optimizedBody592_65

def optimized592 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(592, 3, optimizedBody592_66)
end InitECandidate.Proofs.StackAnalysis
