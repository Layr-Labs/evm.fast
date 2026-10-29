import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source345
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles345
def optimizedBody345_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (50, 4), (48, 2)]

def optimizedBody345_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody345_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody345_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody345_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_2 optimizedBody345_3

def optimizedBody345_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody345_1, 345, 2)) (some 169) ([2, 4]) (some (2, optimizedBody345_4, 345, 3))

def optimizedBody345_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody345_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody345_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody345_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (50, 50), (48, 48), (52, 0)]

def optimizedBody345_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (0, 46), (50, 50), (48, 48), (6, 52)]

def optimizedBody345_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (48, 48), (6, 52)]

def optimizedBody345_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_11 optimizedBody345_3

def optimizedBody345_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody345_10, 345, 4)) (some 68) ([2]) (some (2, optimizedBody345_12, 345, 5))

def optimizedBody345_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody345_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 8), (0, 0), (50, 50), (4, 4), (48, 48), (6, 6)]

def optimizedBody345_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody345_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def optimizedBody345_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody345_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 4), (54, 48), (56, 2)]

def optimizedBody345_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (48, 48), (50, 50), (8, 52), (54, 54), (56, 56)]

def optimizedBody345_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (8, 52), (54, 54), (56, 56)]

def optimizedBody345_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_21 optimizedBody345_3

def optimizedBody345_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody345_20, 345, 6)) (some 341) ([2, 4, 6]) (some (2, optimizedBody345_22, 345, 7))

def optimizedBody345_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody345_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody345_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody345_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody345_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50), (52, 8), (54, 54), (56, 56)]

def optimizedBody345_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (10, 46), (0, 48), (12, 50), (4, 52), (14, 54), (6, 56)]

def optimizedBody345_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (10, 46), (0, 48), (12, 50), (4, 52), (14, 54), (6, 56)]

def optimizedBody345_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_30 optimizedBody345_3

def optimizedBody345_32 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody345_29, 345, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody345_31, 345, 9))

def optimizedBody345_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody345_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (46, 10), (0, 0), (50, 12), (4, 4), (48, 14), (6, 6)]

def optimizedBody345_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody345_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_34 optimizedBody345_35

def optimizedBody345_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_33 optimizedBody345_36

def optimizedBody345_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_7 optimizedBody345_37

def optimizedBody345_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_6 optimizedBody345_38

def optimizedBody345_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_32 optimizedBody345_39

def optimizedBody345_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_28 optimizedBody345_40

def optimizedBody345_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_18 optimizedBody345_41

def optimizedBody345_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_7 optimizedBody345_42

def optimizedBody345_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_27 optimizedBody345_43

def optimizedBody345_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_26 optimizedBody345_44

def optimizedBody345_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_25 optimizedBody345_45

def optimizedBody345_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_24 optimizedBody345_46

def optimizedBody345_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_6 optimizedBody345_47

def optimizedBody345_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_23 optimizedBody345_48

def optimizedBody345_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_19 optimizedBody345_49

def optimizedBody345_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_18 optimizedBody345_50

def optimizedBody345_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_17 optimizedBody345_51

def optimizedBody345_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_6 optimizedBody345_52

def optimizedBody345_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody345_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody345_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_54 optimizedBody345_55

def optimizedBody345_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_6 optimizedBody345_56

def optimizedBody345_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody345_53 optimizedBody345_57

def optimizedBody345_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 8), (0, 0), (50, 10), (4, 4), (48, 12), (6, 6)]

def optimizedBody345_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_6 optimizedBody345_59

def optimizedBody345_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_58 optimizedBody345_60

def optimizedBody345_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_16 optimizedBody345_61

def optimizedBody345_63 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody345_62 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody345_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (4, 0)]

def optimizedBody345_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody345_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_64 optimizedBody345_65

def optimizedBody345_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_6 optimizedBody345_66

def optimizedBody345_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_63 optimizedBody345_67

def optimizedBody345_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_15 optimizedBody345_68

def optimizedBody345_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_6 optimizedBody345_69

def optimizedBody345_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_14 optimizedBody345_70

def optimizedBody345_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_6 optimizedBody345_71

def optimizedBody345_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_13 optimizedBody345_72

def optimizedBody345_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_9 optimizedBody345_73

def optimizedBody345_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_8 optimizedBody345_74

def optimizedBody345_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_7 optimizedBody345_75

def optimizedBody345_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_6 optimizedBody345_76

def optimizedBody345_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_5 optimizedBody345_77

def optimizedBody345_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody345_0 optimizedBody345_78

def oracle345 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 0 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 25 (Flapjack.Spt.ls 22)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 4 (Flapjack.Spt.ls 28)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 (Flapjack.Spt.ls 1)) 25
                (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 22 Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 1 Flapjack.Spt.ln) 0
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 2 (Flapjack.Spt.ls 2)) 24
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 0 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 24 (Flapjack.Spt.ls 0)) 22
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 24 Flapjack.Spt.ln) 24
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 28)) 23 Flapjack.Spt.ln) 22
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 25 Flapjack.Spt.ln) 25 Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 27)) 22 Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 26)))))))))
def optimized345 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(345, 3, optimizedBody345_79)
end InitECandidate.Proofs.SmallStages.Oracles345
