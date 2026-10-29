import InitECandidate.Proofs.WordStages.Optimize327
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source343
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody343_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0), (50, 4), (48, 2)]

def optimizedBody343_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody343_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (50, 50), (48, 48)]

def optimizedBody343_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody343_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_2 optimizedBody343_3

def optimizedBody343_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody343_1, 343, 2)) (some 169) ([2, 4]) (some (2, optimizedBody343_4, 343, 3))

def optimizedBody343_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody343_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody343_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 4 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody343_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 4), (50, 50), (48, 48), (52, 0)]

def optimizedBody343_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (44, 44), (0, 46), (50, 50), (48, 48), (6, 52)]

def optimizedBody343_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (50, 50), (48, 48), (6, 52)]

def optimizedBody343_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_11 optimizedBody343_3

def optimizedBody343_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody343_10, 343, 4)) (some 68) ([2]) (some (2, optimizedBody343_12, 343, 5))

def optimizedBody343_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody343_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 8), (0, 0), (50, 50), (4, 4), (48, 48), (6, 6)]

def optimizedBody343_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody343_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 6)]

def optimizedBody343_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 32#64)

def optimizedBody343_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46), (48, 0), (50, 50), (52, 4), (54, 48), (56, 2)]

def optimizedBody343_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46), (48, 48), (50, 50), (8, 52), (54, 54), (56, 56)]

def optimizedBody343_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (48, 48), (50, 50), (8, 52), (54, 54), (56, 56)]

def optimizedBody343_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_21 optimizedBody343_3

def optimizedBody343_23 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody343_20, 343, 6)) (some 339) ([2, 4, 6]) (some (2, optimizedBody343_22, 343, 7))

def optimizedBody343_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8)]

def optimizedBody343_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 8 (Flapjack.WordRegImm.imm 5#64)))

def optimizedBody343_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody343_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 2 (Flapjack.WordRegImm.reg 0)))

def optimizedBody343_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (44, 44), (46, 0), (48, 48), (50, 50), (52, 8), (54, 54), (56, 56)]

def optimizedBody343_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 44), (10, 46), (0, 48), (12, 50), (4, 52), (14, 54), (6, 56)]

def optimizedBody343_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 44), (10, 46), (0, 48), (12, 50), (4, 52), (14, 54), (6, 56)]

def optimizedBody343_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_30 optimizedBody343_3

def optimizedBody343_32 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody343_29, 343, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody343_31, 343, 9))

def optimizedBody343_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody343_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 8), (46, 10), (0, 0), (50, 12), (4, 4), (48, 14), (6, 6)]

def optimizedBody343_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def optimizedBody343_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_34 optimizedBody343_35

def optimizedBody343_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_33 optimizedBody343_36

def optimizedBody343_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_7 optimizedBody343_37

def optimizedBody343_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_6 optimizedBody343_38

def optimizedBody343_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_32 optimizedBody343_39

def optimizedBody343_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_28 optimizedBody343_40

def optimizedBody343_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_18 optimizedBody343_41

def optimizedBody343_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_7 optimizedBody343_42

def optimizedBody343_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_27 optimizedBody343_43

def optimizedBody343_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_26 optimizedBody343_44

def optimizedBody343_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_25 optimizedBody343_45

def optimizedBody343_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_24 optimizedBody343_46

def optimizedBody343_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_6 optimizedBody343_47

def optimizedBody343_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_23 optimizedBody343_48

def optimizedBody343_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_19 optimizedBody343_49

def optimizedBody343_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_18 optimizedBody343_50

def optimizedBody343_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_17 optimizedBody343_51

def optimizedBody343_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_6 optimizedBody343_52

def optimizedBody343_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody343_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def optimizedBody343_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_54 optimizedBody343_55

def optimizedBody343_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_6 optimizedBody343_56

def optimizedBody343_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.WordRegImm.reg 0) optimizedBody343_53 optimizedBody343_57

def optimizedBody343_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 2), (46, 8), (0, 0), (50, 10), (4, 4), (48, 12), (6, 6)]

def optimizedBody343_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_6 optimizedBody343_59

def optimizedBody343_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_58 optimizedBody343_60

def optimizedBody343_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_16 optimizedBody343_61

def optimizedBody343_63 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
  PUnit.unit Flapjack.Spt.ln) optimizedBody343_62 (Flapjack.Spt.bs
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln))
  PUnit.unit Flapjack.Spt.ln)

def optimizedBody343_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 46), (4, 0)]

def optimizedBody343_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 44 [2, 4]

def optimizedBody343_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_64 optimizedBody343_65

def optimizedBody343_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_6 optimizedBody343_66

def optimizedBody343_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_63 optimizedBody343_67

def optimizedBody343_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_15 optimizedBody343_68

def optimizedBody343_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_6 optimizedBody343_69

def optimizedBody343_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_14 optimizedBody343_70

def optimizedBody343_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_6 optimizedBody343_71

def optimizedBody343_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_13 optimizedBody343_72

def optimizedBody343_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_9 optimizedBody343_73

def optimizedBody343_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_8 optimizedBody343_74

def optimizedBody343_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_7 optimizedBody343_75

def optimizedBody343_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_6 optimizedBody343_76

def optimizedBody343_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_5 optimizedBody343_77

def optimizedBody343_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody343_0 optimizedBody343_78

def oracle343 : Option (Spt Nat) :=
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
def optimized343 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(343, 3, optimizedBody343_79)
theorem optimize343_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source343, oracle343) = optimized343 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize343_eq
end InitECandidate.Proofs.WordStages
