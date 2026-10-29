import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source640
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles640
def optimizedBody640_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (44, 0), (46, 16), (48, 8), (50, 12), (52, 2), (54, 10), (56, 6), (58, 14)]

def optimizedBody640_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (16, 46), (12, 48), (0, 50), (6, 52), (4, 54), (10, 56), (14, 58)]

def optimizedBody640_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (16, 46), (12, 48), (0, 50), (6, 52), (4, 54), (10, 56), (14, 58)]

def optimizedBody640_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody640_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_2 optimizedBody640_3

def optimizedBody640_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody640_1, 640, 2)) (some 126) ([2, 4]) (some (2, optimizedBody640_4, 640, 3))

def optimizedBody640_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody640_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody640_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (4, 6), (2, 4)]

def optimizedBody640_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 6 8 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody640_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (46, 44), (44, 12), (48, 2), (50, 8)]

def optimizedBody640_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 46), (0, 44), (6, 48), (4, 50)]

def optimizedBody640_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 46), (0, 44), (6, 48), (4, 50)]

def optimizedBody640_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_12 optimizedBody640_3

def optimizedBody640_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody640_11, 640, 4)) (some 77) ([2, 4, 6]) (some (2, optimizedBody640_13, 640, 5))

def optimizedBody640_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody640_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody640_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody640_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 6)))

def optimizedBody640_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (0, 0)]

def optimizedBody640_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody640_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 0 (Flapjack.WordRegImm.imm 3#64)))

def optimizedBody640_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (46, 46)]

def optimizedBody640_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 46)]

def optimizedBody640_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (18, 46)]

def optimizedBody640_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_24 optimizedBody640_3

def optimizedBody640_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody640_23, 640, 6)) (some 78) ([2, 4]) (some (2, optimizedBody640_25, 640, 7))

def optimizedBody640_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody640_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody640_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 18 [2]

def optimizedBody640_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_28 optimizedBody640_29

def optimizedBody640_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_27 optimizedBody640_30

def optimizedBody640_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_6 optimizedBody640_31

def optimizedBody640_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_26 optimizedBody640_32

def optimizedBody640_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_22 optimizedBody640_33

def optimizedBody640_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_21 optimizedBody640_34

def optimizedBody640_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_20 optimizedBody640_35

def optimizedBody640_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_19 optimizedBody640_36

def optimizedBody640_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_18 optimizedBody640_37

def optimizedBody640_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_17 optimizedBody640_38

def optimizedBody640_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_16 optimizedBody640_39

def optimizedBody640_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_15 optimizedBody640_40

def optimizedBody640_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_6 optimizedBody640_41

def optimizedBody640_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_14 optimizedBody640_42

def optimizedBody640_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_10 optimizedBody640_43

def optimizedBody640_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_9 optimizedBody640_44

def optimizedBody640_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_8 optimizedBody640_45

def optimizedBody640_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_6 optimizedBody640_46

def optimizedBody640_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(16, 16), (12, 12), (0, 0), (6, 6), (4, 4), (10, 10), (14, 14), (8, 8), (44, 44)]

def optimizedBody640_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 12) optimizedBody640_47 optimizedBody640_48

def optimizedBody640_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44)]

def optimizedBody640_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody640_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody640_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_52 optimizedBody640_3

def optimizedBody640_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody640_51, 640, 8)) (some 639) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody640_53, 640, 9))

def optimizedBody640_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody640_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_28 optimizedBody640_55

def optimizedBody640_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_27 optimizedBody640_56

def optimizedBody640_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_6 optimizedBody640_57

def optimizedBody640_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_54 optimizedBody640_58

def optimizedBody640_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_50 optimizedBody640_59

def optimizedBody640_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_6 optimizedBody640_60

def optimizedBody640_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_6 optimizedBody640_61

def optimizedBody640_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_49 optimizedBody640_62

def optimizedBody640_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_7 optimizedBody640_63

def optimizedBody640_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_6 optimizedBody640_64

def optimizedBody640_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_5 optimizedBody640_65

def optimizedBody640_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody640_0 optimizedBody640_66

def oracle640 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.ls 2))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 6))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 3))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 4))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 27) (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 22 (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
              Flapjack.Spt.ln))))))
def optimized640 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(640, 9, optimizedBody640_67)
end InitECandidate.Proofs.SmallStages.Oracles640
