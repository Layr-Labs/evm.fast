import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles473
def optimizedBody473_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody473_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4 Flapjack.WordStore.heapLength

def optimizedBody473_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4 4 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody473_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4 4

def optimizedBody473_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 4 18446744073709551360#64))

def optimizedBody473_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody473_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6)]

def optimizedBody473_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody473_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody473_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody473_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 72#64)))

def optimizedBody473_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 2 8 (Flapjack.WordRegImm.reg 2)))

def optimizedBody473_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 2)]

def optimizedBody473_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody473_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody473_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody473_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody473_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_15 optimizedBody473_16

def optimizedBody473_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_14 optimizedBody473_17

def optimizedBody473_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_13 optimizedBody473_18

def optimizedBody473_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_12 optimizedBody473_19

def optimizedBody473_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_11 optimizedBody473_20

def optimizedBody473_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_8 optimizedBody473_21

def optimizedBody473_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_10 optimizedBody473_22

def optimizedBody473_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_6 optimizedBody473_23

def optimizedBody473_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_9 optimizedBody473_24

def optimizedBody473_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 8), (48, 2)]

def optimizedBody473_27 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 2) optimizedBody473_25 optimizedBody473_26

def optimizedBody473_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 10), (4, 4), (44, 0), (46, 10), (48, 48), (50, 4)]

def optimizedBody473_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 2), (10, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody473_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (10, 44), (6, 46), (0, 48), (4, 50)]

def optimizedBody473_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody473_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_30 optimizedBody473_31

def optimizedBody473_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody473_29, 473, 2)) (some 465) ([2, 4]) (some (2, optimizedBody473_32, 473, 3))

def optimizedBody473_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (8, 8)]

def optimizedBody473_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (0, 0)]

def optimizedBody473_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 0 0 (Flapjack.WordRegImm.reg 6)))

def optimizedBody473_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2 Flapjack.WordStore.heapLength

def optimizedBody473_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2 2 (Flapjack.WordRegImm.imm 1#64)))

def optimizedBody473_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2 2

def optimizedBody473_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody473_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody473_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody473_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody473_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody473_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 6 6 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody473_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (4, 4)]

def optimizedBody473_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 4 (Flapjack.WordRegImm.reg 0)))

def optimizedBody473_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (4, 4)]

def optimizedBody473_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody473_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 2 18446744073709551360#64))

def optimizedBody473_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody473_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0)]

def optimizedBody473_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 4 192#64))

def optimizedBody473_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 0 0 (Flapjack.WordRegImm.reg 4)))

def optimizedBody473_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0)]

def optimizedBody473_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody473_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 10 [2]

def optimizedBody473_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_15 optimizedBody473_57

def optimizedBody473_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_14 optimizedBody473_58

def optimizedBody473_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_56 optimizedBody473_59

def optimizedBody473_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_55 optimizedBody473_60

def optimizedBody473_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_54 optimizedBody473_61

def optimizedBody473_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_53 optimizedBody473_62

def optimizedBody473_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_52 optimizedBody473_63

def optimizedBody473_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_51 optimizedBody473_64

def optimizedBody473_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_50 optimizedBody473_65

def optimizedBody473_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_44 optimizedBody473_66

def optimizedBody473_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_49 optimizedBody473_67

def optimizedBody473_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_48 optimizedBody473_68

def optimizedBody473_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_47 optimizedBody473_69

def optimizedBody473_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_46 optimizedBody473_70

def optimizedBody473_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_45 optimizedBody473_71

def optimizedBody473_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_40 optimizedBody473_72

def optimizedBody473_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_44 optimizedBody473_73

def optimizedBody473_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_43 optimizedBody473_74

def optimizedBody473_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_42 optimizedBody473_75

def optimizedBody473_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_41 optimizedBody473_76

def optimizedBody473_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_10 optimizedBody473_77

def optimizedBody473_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_40 optimizedBody473_78

def optimizedBody473_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_39 optimizedBody473_79

def optimizedBody473_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_38 optimizedBody473_80

def optimizedBody473_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_37 optimizedBody473_81

def optimizedBody473_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_36 optimizedBody473_82

def optimizedBody473_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_35 optimizedBody473_83

def optimizedBody473_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_9 optimizedBody473_84

def optimizedBody473_86 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody473_87 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 8 (Flapjack.WordRegImm.reg 0) optimizedBody473_85 optimizedBody473_86

def optimizedBody473_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody473_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody473_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody473_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 8#64)

def optimizedBody473_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_44 optimizedBody473_31

def optimizedBody473_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_91 optimizedBody473_92

def optimizedBody473_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_90 optimizedBody473_93

def optimizedBody473_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_89 optimizedBody473_94

def optimizedBody473_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_88 optimizedBody473_95

def optimizedBody473_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_9 optimizedBody473_96

def optimizedBody473_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_9 optimizedBody473_97

def optimizedBody473_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_87 optimizedBody473_98

def optimizedBody473_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_34 optimizedBody473_99

def optimizedBody473_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_9 optimizedBody473_100

def optimizedBody473_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_33 optimizedBody473_101

def optimizedBody473_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_28 optimizedBody473_102

def optimizedBody473_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_9 optimizedBody473_103

def optimizedBody473_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_9 optimizedBody473_104

def optimizedBody473_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_27 optimizedBody473_105

def optimizedBody473_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_8 optimizedBody473_106

def optimizedBody473_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_7 optimizedBody473_107

def optimizedBody473_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_6 optimizedBody473_108

def optimizedBody473_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_5 optimizedBody473_109

def optimizedBody473_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_4 optimizedBody473_110

def optimizedBody473_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_3 optimizedBody473_111

def optimizedBody473_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_2 optimizedBody473_112

def optimizedBody473_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_1 optimizedBody473_113

def optimizedBody473_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody473_0 optimizedBody473_114

def oracle473 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 1)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
              3
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            2
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)))
              4 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3)))))
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 0)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
            0
            (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 Flapjack.Spt.ln) 2
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 3)) 4
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.ls 1))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 0)) 3
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 0)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4))))
            1
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 4 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))) 3
              (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0) (Flapjack.Spt.ls 3)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))))
            (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 2
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.ls 1)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)))))))
def optimized473 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(473, 2, optimizedBody473_115)
end InitECandidate.Proofs.SmallStages.Oracles473
