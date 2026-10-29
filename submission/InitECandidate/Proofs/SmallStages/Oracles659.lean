import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source659
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles659
def optimizedBody659_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 16), (48, 8), (50, 4), (52, 12), (54, 2), (56, 10), (58, 6), (60, 14)]

def optimizedBody659_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (10, 48), (14, 50), (8, 52), (16, 54), (6, 56), (12, 58), (4, 60)]

def optimizedBody659_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (10, 48), (14, 50), (8, 52), (16, 54), (6, 56), (12, 58), (4, 60)]

def optimizedBody659_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody659_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_2 optimizedBody659_3

def optimizedBody659_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody659_1, 659, 2)) (some 658) ([]) (some (2, optimizedBody659_4, 659, 3))

def optimizedBody659_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody659_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody659_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody659_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 18 2

def optimizedBody659_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 18 18446744073709551208#64))

def optimizedBody659_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (16, 16), (10, 10), (12, 12), (14, 14)]

def optimizedBody659_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody659_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (14, 14)]

def optimizedBody659_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody659_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody659_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody659_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody659_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody659_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(18, 18)]

def optimizedBody659_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 18 18446744073709551200#64))

def optimizedBody659_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6), (0, 0), (4, 4), (8, 8)]

def optimizedBody659_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody659_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody659_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody659_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody659_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody659_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody659_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody659_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 18 18446744073709551168#64))

def optimizedBody659_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody659_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 160#64)

def optimizedBody659_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody659_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody659_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.ffi
  (Flapjack.Basis.Pure.MlString.MlString.implode
    [98#8, 110#8, 95#8, 97#8, 114#8, 105#8, 116#8, 104#8, 50#8, 53#8, 54#8])
  2 4 6 8
  (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln,
    Flapjack.Spt.ln)

def optimizedBody659_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 44)]

def optimizedBody659_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 0 Flapjack.WordStore.heapLength

def optimizedBody659_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 0 0 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody659_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 0 0

def optimizedBody659_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 0 (Flapjack.WordLangAddr.addr 0 18446744073709551176#64))

def optimizedBody659_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 0 0#64))

def optimizedBody659_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0)]

def optimizedBody659_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 0 8#64))

def optimizedBody659_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 0 16#64))

def optimizedBody659_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 0 24#64))

def optimizedBody659_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody659_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2, 4, 6, 8]

def optimizedBody659_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_45 optimizedBody659_46

def optimizedBody659_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_44 optimizedBody659_47

def optimizedBody659_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_41 optimizedBody659_48

def optimizedBody659_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_43 optimizedBody659_49

def optimizedBody659_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_41 optimizedBody659_50

def optimizedBody659_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_42 optimizedBody659_51

def optimizedBody659_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_41 optimizedBody659_52

def optimizedBody659_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_40 optimizedBody659_53

def optimizedBody659_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_39 optimizedBody659_54

def optimizedBody659_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_38 optimizedBody659_55

def optimizedBody659_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_37 optimizedBody659_56

def optimizedBody659_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_36 optimizedBody659_57

def optimizedBody659_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_35 optimizedBody659_58

def optimizedBody659_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_34 optimizedBody659_59

def optimizedBody659_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_33 optimizedBody659_60

def optimizedBody659_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_32 optimizedBody659_61

def optimizedBody659_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_31 optimizedBody659_62

def optimizedBody659_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_30 optimizedBody659_63

def optimizedBody659_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_29 optimizedBody659_64

def optimizedBody659_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_19 optimizedBody659_65

def optimizedBody659_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_28 optimizedBody659_66

def optimizedBody659_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_27 optimizedBody659_67

def optimizedBody659_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_26 optimizedBody659_68

def optimizedBody659_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_25 optimizedBody659_69

def optimizedBody659_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_24 optimizedBody659_70

def optimizedBody659_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_23 optimizedBody659_71

def optimizedBody659_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_22 optimizedBody659_72

def optimizedBody659_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_21 optimizedBody659_73

def optimizedBody659_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_20 optimizedBody659_74

def optimizedBody659_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_19 optimizedBody659_75

def optimizedBody659_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_18 optimizedBody659_76

def optimizedBody659_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_17 optimizedBody659_77

def optimizedBody659_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_16 optimizedBody659_78

def optimizedBody659_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_15 optimizedBody659_79

def optimizedBody659_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_14 optimizedBody659_80

def optimizedBody659_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_13 optimizedBody659_81

def optimizedBody659_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_12 optimizedBody659_82

def optimizedBody659_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_11 optimizedBody659_83

def optimizedBody659_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_10 optimizedBody659_84

def optimizedBody659_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_9 optimizedBody659_85

def optimizedBody659_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_8 optimizedBody659_86

def optimizedBody659_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_7 optimizedBody659_87

def optimizedBody659_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_6 optimizedBody659_88

def optimizedBody659_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_5 optimizedBody659_89

def optimizedBody659_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody659_0 optimizedBody659_90

def oracle659 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 4 (Flapjack.Spt.ls 5))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 1)) 22
                (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 5 (Flapjack.Spt.ls 7))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 1))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 1 Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 7 (Flapjack.Spt.ls 6))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 5))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 9 (Flapjack.Spt.ls 9)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 4))
                (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 4)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 1))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 3))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 8 (Flapjack.Spt.ls 3)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 25 Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 30) (Flapjack.Spt.ls 22)))
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))
            (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln))))))
def optimized659 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(659, 9, optimizedBody659_91)
end InitECandidate.Proofs.SmallStages.Oracles659
