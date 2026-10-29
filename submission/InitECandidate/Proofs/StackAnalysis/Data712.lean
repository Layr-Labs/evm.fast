import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody712_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (44, 0), (46, 8), (48, 4), (50, 12), (52, 2), (54, 10), (56, 6)]

def optimizedBody712_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (26, 44), (20, 46), (16, 48), (24, 50), (14, 52), (22, 54), (18, 56)]

def optimizedBody712_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (26, 44), (20, 46), (16, 48), (24, 50), (14, 52), (22, 54), (18, 56)]

def optimizedBody712_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody712_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_2 optimizedBody712_3

def optimizedBody712_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody712_1, 712, 2)) (some 705) ([2, 4, 6, 8, 10, 12]) (some (2, optimizedBody712_4, 712, 3))

def optimizedBody712_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody712_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody712_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody712_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody712_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody712_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody712_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody712_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 0#64)

def optimizedBody712_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody712_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody712_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 26 [2, 4, 6, 8, 10, 12]

def optimizedBody712_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_15 optimizedBody712_16

def optimizedBody712_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_14 optimizedBody712_17

def optimizedBody712_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_13 optimizedBody712_18

def optimizedBody712_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_12 optimizedBody712_19

def optimizedBody712_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_11 optimizedBody712_20

def optimizedBody712_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_10 optimizedBody712_21

def optimizedBody712_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_9 optimizedBody712_22

def optimizedBody712_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_6 optimizedBody712_23

def optimizedBody712_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody712_26 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody712_24 optimizedBody712_25

def optimizedBody712_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24), (22, 22), (20, 20), (18, 18), (16, 16), (14, 14)]

def optimizedBody712_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1873798617647539866#64)

def optimizedBody712_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 5412103778470702295#64)

def optimizedBody712_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 7239337960414712511#64)

def optimizedBody712_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 7435674573564081700#64)

def optimizedBody712_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 2210141511517208575#64)

def optimizedBody712_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 13402431016077863595#64)

def optimizedBody712_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 26)]

def optimizedBody712_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 2), (4, 4), (12, 12), (6, 6), (10, 10), (8, 8), (0, 44)]

def optimizedBody712_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody712_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_36 optimizedBody712_3

def optimizedBody712_38 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12, 14]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody712_35, 712, 4)) (some 709) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody712_37, 712, 5))

def optimizedBody712_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 14), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12)]

def optimizedBody712_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8, 10, 12]

def optimizedBody712_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_39 optimizedBody712_40

def optimizedBody712_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_6 optimizedBody712_41

def optimizedBody712_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_38 optimizedBody712_42

def optimizedBody712_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_34 optimizedBody712_43

def optimizedBody712_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_33 optimizedBody712_44

def optimizedBody712_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_32 optimizedBody712_45

def optimizedBody712_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_31 optimizedBody712_46

def optimizedBody712_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_30 optimizedBody712_47

def optimizedBody712_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_29 optimizedBody712_48

def optimizedBody712_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_28 optimizedBody712_49

def optimizedBody712_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_27 optimizedBody712_50

def optimizedBody712_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_6 optimizedBody712_51

def optimizedBody712_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_6 optimizedBody712_52

def optimizedBody712_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_26 optimizedBody712_53

def optimizedBody712_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_8 optimizedBody712_54

def optimizedBody712_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_7 optimizedBody712_55

def optimizedBody712_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_6 optimizedBody712_56

def optimizedBody712_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_5 optimizedBody712_57

def optimizedBody712_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody712_0 optimizedBody712_58

def optimized712 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(712, 7, optimizedBody712_59)
end InitECandidate.Proofs.StackAnalysis
