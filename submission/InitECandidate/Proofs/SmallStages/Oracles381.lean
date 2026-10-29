import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source381
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles381
def optimizedBody381_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (50, 2), (52, 6)]

def optimizedBody381_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody381_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50), (52, 52)]

def optimizedBody381_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody381_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_2 optimizedBody381_3

def optimizedBody381_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_1, 381, 2)) (some 69) ([]) (some (2, optimizedBody381_4, 381, 3))

def optimizedBody381_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody381_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody381_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50), (52, 52)]

def optimizedBody381_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (46, 48), (0, 50), (52, 52)]

def optimizedBody381_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50), (52, 52)]

def optimizedBody381_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_10 optimizedBody381_3

def optimizedBody381_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_9, 381, 4)) (some 68) ([2]) (some (2, optimizedBody381_11, 381, 5))

def optimizedBody381_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46), (48, 6), (50, 0), (52, 52)]

def optimizedBody381_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(20, 2), (44, 44), (46, 46), (4, 48), (0, 50), (22, 52)]

def optimizedBody381_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50), (22, 52)]

def optimizedBody381_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_15 optimizedBody381_3

def optimizedBody381_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_14, 381, 6)) (some 380) ([2, 4, 6]) (some (2, optimizedBody381_16, 381, 7))

def optimizedBody381_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody381_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 320#64))

def optimizedBody381_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody381_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 328#64))

def optimizedBody381_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 336#64))

def optimizedBody381_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 0 344#64))

def optimizedBody381_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 0 352#64))

def optimizedBody381_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 0 360#64))

def optimizedBody381_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 0 368#64))

def optimizedBody381_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 0 376#64))

def optimizedBody381_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (44, 44),
    (46, 46)]

def optimizedBody381_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody381_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody381_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_30 optimizedBody381_3

def optimizedBody381_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_29, 381, 8)) (some 237) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22]) (some (2, optimizedBody381_31, 381, 9))

def optimizedBody381_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody381_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 44), (0, 46)]

def optimizedBody381_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 44), (0, 46)]

def optimizedBody381_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_35 optimizedBody381_3

def optimizedBody381_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody381_34, 381, 10)) (some 70) ([2]) (some (2, optimizedBody381_36, 381, 11))

def optimizedBody381_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody381_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 46#64)

def optimizedBody381_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody381_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 6#64)

def optimizedBody381_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody381_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_42 optimizedBody381_3

def optimizedBody381_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_41 optimizedBody381_43

def optimizedBody381_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_40 optimizedBody381_44

def optimizedBody381_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_45

def optimizedBody381_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_39 optimizedBody381_46

def optimizedBody381_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_47

def optimizedBody381_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody381_50 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.WordRegImm.reg 2) optimizedBody381_48 optimizedBody381_49

def optimizedBody381_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody381_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody381_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_51 optimizedBody381_52

def optimizedBody381_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_38 optimizedBody381_53

def optimizedBody381_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_54

def optimizedBody381_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_55

def optimizedBody381_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_50 optimizedBody381_56

def optimizedBody381_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_38 optimizedBody381_57

def optimizedBody381_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_58

def optimizedBody381_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_59

def optimizedBody381_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_37 optimizedBody381_60

def optimizedBody381_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_33 optimizedBody381_61

def optimizedBody381_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_62

def optimizedBody381_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_32 optimizedBody381_63

def optimizedBody381_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_28 optimizedBody381_64

def optimizedBody381_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_27 optimizedBody381_65

def optimizedBody381_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_66

def optimizedBody381_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_26 optimizedBody381_67

def optimizedBody381_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_68

def optimizedBody381_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_25 optimizedBody381_69

def optimizedBody381_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_70

def optimizedBody381_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_24 optimizedBody381_71

def optimizedBody381_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_72

def optimizedBody381_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_23 optimizedBody381_73

def optimizedBody381_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_74

def optimizedBody381_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_22 optimizedBody381_75

def optimizedBody381_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_76

def optimizedBody381_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_21 optimizedBody381_77

def optimizedBody381_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_20 optimizedBody381_78

def optimizedBody381_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_19 optimizedBody381_79

def optimizedBody381_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_18 optimizedBody381_80

def optimizedBody381_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_81

def optimizedBody381_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_17 optimizedBody381_82

def optimizedBody381_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_13 optimizedBody381_83

def optimizedBody381_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_84

def optimizedBody381_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_12 optimizedBody381_85

def optimizedBody381_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_8 optimizedBody381_86

def optimizedBody381_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_7 optimizedBody381_87

def optimizedBody381_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_6 optimizedBody381_88

def optimizedBody381_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_5 optimizedBody381_89

def optimizedBody381_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody381_0 optimizedBody381_90

def oracle381 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 0)) 25
                (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 23 (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 26 (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 5))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 (Flapjack.Spt.ls 7)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 23
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 2 (Flapjack.Spt.ls 4))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 6)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 22 Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 25 (Flapjack.Spt.ls 25)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 22)) 26 (Flapjack.Spt.ls 26))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 23 (Flapjack.Spt.ls 24))))))))
def optimized381 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(381, 4, optimizedBody381_91)
end InitECandidate.Proofs.SmallStages.Oracles381
