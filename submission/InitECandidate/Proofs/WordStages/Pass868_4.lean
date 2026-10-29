import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass868_3
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word868_4_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 0), (65, 2), (69, 4)]

def word868_4_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 65)]

def word868_4_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 77 (Flapjack.WordLangAddr.addr 73 0#64))

def word868_4_3 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1 word868_4_2

def word868_4_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 77)]

def word868_4_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 40#64))

def word868_4_6 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_4 word868_4_5

def word868_4_7 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_3 word868_4_6

def word868_4_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 88#64)

def word868_4_9 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_7 word868_4_8

def word868_4_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 61), (103, 69), (107, 85), (111, 73), (115, 81)]

def word868_4_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93)]

def word868_4_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 99), (125, 103), (129, 107), (133, 111), (137, 115)]

def word868_4_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 2)]

def word868_4_14 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_12 word868_4_13

def word868_4_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 141)]

def word868_4_16 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_14 word868_4_15

def word868_4_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2)]

def word868_4_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def word868_4_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def word868_4_20 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_18 word868_4_19

def word868_4_21 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_17 word868_4_20

def word868_4_22 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_12 word868_4_21

def word868_4_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def word868_4_24 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_22 word868_4_23

def word868_4_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word868_4_16, 868, 2)) (some 68) ([2]) (some (2, word868_4_24, 868, 3))

def word868_4_26 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_11 word868_4_25

def word868_4_27 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_10 word868_4_26

def word868_4_28 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_9 word868_4_27

def word868_4_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word868_4_30 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_28 word868_4_29

def word868_4_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 157 Flapjack.WordStore.heapLength

def word868_4_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 161 157 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_33 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_31 word868_4_32

def word868_4_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 165 161

def word868_4_35 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_33 word868_4_34

def word868_4_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 169 165 (Flapjack.WordRegImm.imm 18446744073709551200#64)))

def word868_4_37 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_35 word868_4_36

def word868_4_38 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_30 word868_4_37

def word868_4_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def word868_4_40 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_38 word868_4_39

def word868_4_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 173)]

def word868_4_42 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_40 word868_4_41

def word868_4_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 169)]

def word868_4_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 177 (Flapjack.WordLangAddr.addr 181 0#64))

def word868_4_45 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_43 word868_4_44

def word868_4_46 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_42 word868_4_45

def word868_4_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(185, 157)]

def word868_4_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(189, 161)]

def word868_4_49 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_47 word868_4_48

def word868_4_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(193, 165)]

def word868_4_51 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_49 word868_4_50

def word868_4_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551200#64))

def word868_4_53 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_51 word868_4_52

def word868_4_54 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_46 word868_4_53

def word868_4_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 88#64)

def word868_4_56 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_54 word868_4_55

def word868_4_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 121), (215, 125), (219, 129), (223, 133), (227, 137)]

def word868_4_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 205)]

def word868_4_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def word868_4_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def word868_4_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257)]

def word868_4_62 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_61 word868_4_19

def word868_4_63 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_60 word868_4_62

def word868_4_64 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_59 word868_4_63

def word868_4_65 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_59, 868, 4)) (some 78) ([2, 4]) (some (2, word868_4_64, 868, 5))

def word868_4_66 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_58 word868_4_65

def word868_4_67 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_57 word868_4_66

def word868_4_68 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_56 word868_4_67

def word868_4_69 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_68 word868_4_29

def word868_4_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def word868_4_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 273 269 (Flapjack.WordRegImm.imm 4#64)))

def word868_4_72 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_70 word868_4_71

def word868_4_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 16#64)))

def word868_4_74 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_72 word868_4_73

def word868_4_75 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_69 word868_4_74

def word868_4_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(283, 233), (287, 237), (291, 269), (295, 245), (299, 249)]

def word868_4_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def word868_4_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def word868_4_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def word868_4_80 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_78 word868_4_79

def word868_4_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 325)]

def word868_4_82 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_80 word868_4_81

def word868_4_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def word868_4_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def word868_4_85 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_84 word868_4_19

def word868_4_86 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_83 word868_4_85

def word868_4_87 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_78 word868_4_86

def word868_4_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def word868_4_89 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_87 word868_4_88

def word868_4_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_82, 868, 6)) (some 68) ([2]) (some (2, word868_4_89, 868, 7))

def word868_4_91 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_77 word868_4_90

def word868_4_92 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_76 word868_4_91

def word868_4_93 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_75 word868_4_92

def word868_4_94 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_93 word868_4_29

def word868_4_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 341 Flapjack.WordStore.heapLength

def word868_4_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 345 341 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_97 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_95 word868_4_96

def word868_4_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 349 345

def word868_4_99 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_97 word868_4_98

def word868_4_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551200#64))

def word868_4_101 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_99 word868_4_100

def word868_4_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 24#64)))

def word868_4_103 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_101 word868_4_102

def word868_4_104 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_94 word868_4_103

def word868_4_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 333)]

def word868_4_106 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_104 word868_4_105

def word868_4_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 361)]

def word868_4_108 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_106 word868_4_107

def word868_4_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 357)]

def word868_4_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 365 (Flapjack.WordLangAddr.addr 369 0#64))

def word868_4_111 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_109 word868_4_110

def word868_4_112 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_108 word868_4_111

def word868_4_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 313)]

def word868_4_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 377 373 (Flapjack.WordRegImm.imm 4#64)))

def word868_4_115 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_113 word868_4_114

def word868_4_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 381 377 (Flapjack.WordRegImm.imm 16#64)))

def word868_4_117 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_115 word868_4_116

def word868_4_118 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_112 word868_4_117

def word868_4_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(387, 305), (391, 309), (395, 361), (399, 373), (403, 317), (407, 321)]

def word868_4_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 381)]

def word868_4_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 387), (417, 391), (421, 395), (425, 399), (429, 403), (433, 407)]

def word868_4_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 2)]

def word868_4_123 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_121 word868_4_122

def word868_4_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(449, 437)]

def word868_4_125 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_123 word868_4_124

def word868_4_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(441, 2)]

def word868_4_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441)]

def word868_4_128 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_127 word868_4_19

def word868_4_129 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_126 word868_4_128

def word868_4_130 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_121 word868_4_129

def word868_4_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)

def word868_4_132 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_130 word868_4_131

def word868_4_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word868_4_125, 868, 8)) (some 68) ([2]) (some (2, word868_4_132, 868, 9))

def word868_4_134 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_120 word868_4_133

def word868_4_135 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_119 word868_4_134

def word868_4_136 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_118 word868_4_135

def word868_4_137 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_136 word868_4_29

def word868_4_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 453 Flapjack.WordStore.heapLength

def word868_4_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 457 453 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_140 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_138 word868_4_139

def word868_4_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 461 457

def word868_4_142 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_140 word868_4_141

def word868_4_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 465 (Flapjack.WordLangAddr.addr 461 18446744073709551200#64))

def word868_4_144 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_142 word868_4_143

def word868_4_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 469 465 (Flapjack.WordRegImm.imm 32#64)))

def word868_4_146 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_144 word868_4_145

def word868_4_147 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_137 word868_4_146

def word868_4_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(473, 449)]

def word868_4_149 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_147 word868_4_148

def word868_4_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 473)]

def word868_4_151 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_149 word868_4_150

def word868_4_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 469)]

def word868_4_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 477 (Flapjack.WordLangAddr.addr 481 0#64))

def word868_4_154 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_152 word868_4_153

def word868_4_155 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_151 word868_4_154

def word868_4_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 16#64)

def word868_4_157 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_155 word868_4_156

def word868_4_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 8#64)

def word868_4_159 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_157 word868_4_158

def word868_4_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(503, 413), (507, 473), (511, 417), (515, 421), (519, 425), (523, 429), (527, 433)]

def word868_4_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 497), (4, 493)]

def word868_4_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 503), (537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527)]

def word868_4_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(561, 2)]

def word868_4_164 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_162 word868_4_163

def word868_4_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 561)]

def word868_4_166 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_164 word868_4_165

def word868_4_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(565, 2)]

def word868_4_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 565)]

def word868_4_169 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_168 word868_4_19

def word868_4_170 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_167 word868_4_169

def word868_4_171 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_162 word868_4_170

def word868_4_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 0#64)

def word868_4_173 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_171 word868_4_172

def word868_4_174 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))),
  Flapjack.Spt.ln)), word868_4_166, 868, 10)) (some 435) ([2, 4]) (some (2, word868_4_173, 868, 11))

def word868_4_175 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_161 word868_4_174

def word868_4_176 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_160 word868_4_175

def word868_4_177 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_159 word868_4_176

def word868_4_178 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_177 word868_4_29

def word868_4_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 577 Flapjack.WordStore.heapLength

def word868_4_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 581 577 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_181 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_179 word868_4_180

def word868_4_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 585 581

def word868_4_183 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_181 word868_4_182

def word868_4_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 589 (Flapjack.WordLangAddr.addr 585 18446744073709551200#64))

def word868_4_185 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_183 word868_4_184

def word868_4_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 593 589 (Flapjack.WordRegImm.imm 40#64)))

def word868_4_187 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_185 word868_4_186

def word868_4_188 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_178 word868_4_187

def word868_4_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 569)]

def word868_4_190 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_188 word868_4_189

def word868_4_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 597)]

def word868_4_192 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_190 word868_4_191

def word868_4_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 593)]

def word868_4_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 601 (Flapjack.WordLangAddr.addr 605 0#64))

def word868_4_195 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_193 word868_4_194

def word868_4_196 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_192 word868_4_195

def word868_4_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 128#64)

def word868_4_198 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_196 word868_4_197

def word868_4_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(619, 533), (623, 537), (627, 541), (631, 545), (635, 549), (639, 553), (643, 597), (647, 557)]

def word868_4_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 613)]

def word868_4_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(653, 619), (657, 623), (661, 627), (665, 631), (669, 635), (673, 639), (677, 643), (681, 647)]

def word868_4_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(685, 2)]

def word868_4_203 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_201 word868_4_202

def word868_4_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 685)]

def word868_4_205 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_203 word868_4_204

def word868_4_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 2)]

def word868_4_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 689)]

def word868_4_208 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_207 word868_4_19

def word868_4_209 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_206 word868_4_208

def word868_4_210 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_201 word868_4_209

def word868_4_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 693 0#64)

def word868_4_212 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_210 word868_4_211

def word868_4_213 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), word868_4_205, 868, 12)) (some 68) ([2]) (some (2, word868_4_212, 868, 13))

def word868_4_214 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_200 word868_4_213

def word868_4_215 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_199 word868_4_214

def word868_4_216 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_198 word868_4_215

def word868_4_217 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_216 word868_4_29

def word868_4_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 701 Flapjack.WordStore.heapLength

def word868_4_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 705 701 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_220 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_218 word868_4_219

def word868_4_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 709 705

def word868_4_222 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_220 word868_4_221

def word868_4_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 713 (Flapjack.WordLangAddr.addr 709 18446744073709551200#64))

def word868_4_224 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_222 word868_4_223

def word868_4_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 717 713 (Flapjack.WordRegImm.imm 56#64)))

def word868_4_226 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_224 word868_4_225

def word868_4_227 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_217 word868_4_226

def word868_4_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(721, 693)]

def word868_4_229 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_227 word868_4_228

def word868_4_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(725, 721)]

def word868_4_231 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_229 word868_4_230

def word868_4_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 717)]

def word868_4_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 725 (Flapjack.WordLangAddr.addr 729 0#64))

def word868_4_234 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_232 word868_4_233

def word868_4_235 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_231 word868_4_234

def word868_4_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 741 16#64)

def word868_4_237 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_235 word868_4_236

def word868_4_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 745 8#64)

def word868_4_239 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_237 word868_4_238

def word868_4_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(751, 653), (755, 721), (759, 657), (763, 661), (767, 665), (771, 669), (775, 673), (779, 677), (783, 681)]

def word868_4_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 745), (4, 741)]

def word868_4_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(789, 751), (793, 755), (797, 759), (801, 763), (805, 767), (809, 771), (813, 775), (817, 779), (821, 783)]

def word868_4_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(825, 2)]

def word868_4_244 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_242 word868_4_243

def word868_4_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(837, 825)]

def word868_4_246 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_244 word868_4_245

def word868_4_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(829, 2)]

def word868_4_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 829)]

def word868_4_249 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_248 word868_4_19

def word868_4_250 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_247 word868_4_249

def word868_4_251 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_242 word868_4_250

def word868_4_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 837 0#64)

def word868_4_253 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_251 word868_4_252

def word868_4_254 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))),
  Flapjack.Spt.ln)), word868_4_246, 868, 14)) (some 435) ([2, 4]) (some (2, word868_4_253, 868, 15))

def word868_4_255 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_241 word868_4_254

def word868_4_256 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_240 word868_4_255

def word868_4_257 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_239 word868_4_256

def word868_4_258 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_257 word868_4_29

def word868_4_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 841 Flapjack.WordStore.heapLength

def word868_4_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 845 841 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_261 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_259 word868_4_260

def word868_4_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 849 845

def word868_4_263 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_261 word868_4_262

def word868_4_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 853 (Flapjack.WordLangAddr.addr 849 18446744073709551200#64))

def word868_4_265 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_263 word868_4_264

def word868_4_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 857 853 (Flapjack.WordRegImm.imm 72#64)))

def word868_4_267 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_265 word868_4_266

def word868_4_268 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_258 word868_4_267

def word868_4_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(861, 837)]

def word868_4_270 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_268 word868_4_269

def word868_4_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(865, 861)]

def word868_4_272 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_270 word868_4_271

def word868_4_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(869, 857)]

def word868_4_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 865 (Flapjack.WordLangAddr.addr 869 0#64))

def word868_4_275 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_273 word868_4_274

def word868_4_276 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_272 word868_4_275

def word868_4_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(873, 841)]

def word868_4_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(877, 845)]

def word868_4_279 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_277 word868_4_278

def word868_4_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(881, 849)]

def word868_4_281 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_279 word868_4_280

def word868_4_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 885 (Flapjack.WordLangAddr.addr 881 18446744073709551200#64))

def word868_4_283 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_281 word868_4_282

def word868_4_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 889 885 (Flapjack.WordRegImm.imm 80#64)))

def word868_4_285 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_283 word868_4_284

def word868_4_286 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_276 word868_4_285

def word868_4_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(893, 809)]

def word868_4_288 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_286 word868_4_287

def word868_4_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(897, 893)]

def word868_4_290 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_288 word868_4_289

def word868_4_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(901, 889)]

def word868_4_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 897 (Flapjack.WordLangAddr.addr 901 0#64))

def word868_4_293 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_291 word868_4_292

def word868_4_294 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_290 word868_4_293

def word868_4_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(907, 789), (911, 861), (915, 793), (919, 797), (923, 801), (927, 805), (931, 893), (935, 813), (939, 817),
    (943, 821)]

def word868_4_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(949, 907), (953, 911), (957, 915), (961, 919), (965, 923), (969, 927), (973, 931), (977, 935), (981, 939),
    (985, 943)]

def word868_4_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(993, 2)]

def word868_4_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 993)]

def word868_4_299 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_298 word868_4_19

def word868_4_300 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_297 word868_4_299

def word868_4_301 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_296 word868_4_300

def word868_4_302 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_296, 868, 16)) (some 438) ([]) (some (2, word868_4_301, 868, 17))

def word868_4_303 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_295 word868_4_302

def word868_4_304 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_294 word868_4_303

def word868_4_305 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_304 word868_4_29

def word868_4_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1005 Flapjack.WordStore.heapLength

def word868_4_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1009 1005 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_308 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_306 word868_4_307

def word868_4_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1013 1009

def word868_4_310 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_308 word868_4_309

def word868_4_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1017 (Flapjack.WordLangAddr.addr 1013 18446744073709551152#64))

def word868_4_312 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_310 word868_4_311

def word868_4_313 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_305 word868_4_312

def word868_4_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 977)]

def word868_4_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1025 (Flapjack.WordLangAddr.addr 1021 24#64))

def word868_4_316 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_314 word868_4_315

def word868_4_317 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_313 word868_4_316

def word868_4_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1033 32#64)

def word868_4_319 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_317 word868_4_318

def word868_4_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1039, 949), (1043, 953), (1047, 957), (1051, 961), (1055, 965), (1059, 969), (1063, 973), (1067, 1021), (1071, 981),
    (1075, 985)]

def word868_4_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1017), (4, 1025), (6, 1033)]

def word868_4_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1081, 1039), (1085, 1043), (1089, 1047), (1093, 1051), (1097, 1055), (1101, 1059), (1105, 1063), (1109, 1067),
    (1113, 1071), (1117, 1075)]

def word868_4_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1125, 2)]

def word868_4_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1125)]

def word868_4_325 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_324 word868_4_19

def word868_4_326 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_323 word868_4_325

def word868_4_327 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_322 word868_4_326

def word868_4_328 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_322, 868, 18)) (some 860) ([2, 4, 6]) (some (2, word868_4_327, 868, 19))

def word868_4_329 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_321 word868_4_328

def word868_4_330 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_320 word868_4_329

def word868_4_331 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_319 word868_4_330

def word868_4_332 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_331 word868_4_29

def word868_4_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1137 Flapjack.WordStore.heapLength

def word868_4_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1141 1137 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_335 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_333 word868_4_334

def word868_4_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1145 1141

def word868_4_337 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_335 word868_4_336

def word868_4_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1149 (Flapjack.WordLangAddr.addr 1145 18446744073709551184#64))

def word868_4_339 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_337 word868_4_338

def word868_4_340 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_332 word868_4_339

def word868_4_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1153 0#64)

def word868_4_342 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_340 word868_4_341

def word868_4_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1157, 1137)]

def word868_4_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1161, 1141)]

def word868_4_345 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_343 word868_4_344

def word868_4_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1165, 1145)]

def word868_4_347 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_345 word868_4_346

def word868_4_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1169 (Flapjack.WordLangAddr.addr 1165 18446744073709551168#64))

def word868_4_349 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_347 word868_4_348

def word868_4_350 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_342 word868_4_349

def word868_4_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1181, 1157)]

def word868_4_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1185, 1161)]

def word868_4_353 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_351 word868_4_352

def word868_4_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1189, 1165)]

def word868_4_355 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_353 word868_4_354

def word868_4_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1193, 1169)]

def word868_4_357 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_355 word868_4_356

def word868_4_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1197 1193 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def word868_4_359 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_357 word868_4_358

def word868_4_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1201 1197 (Flapjack.WordRegImm.imm 5#64)))

def word868_4_361 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_359 word868_4_360

def word868_4_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1205, 1181)]

def word868_4_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1209, 1185)]

def word868_4_364 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_362 word868_4_363

def word868_4_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1213, 1189)]

def word868_4_366 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_364 word868_4_365

def word868_4_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1217 (Flapjack.WordLangAddr.addr 1213 18446744073709551176#64))

def word868_4_368 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_366 word868_4_367

def word868_4_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1221 1201 (Flapjack.WordRegImm.reg 1217)))

def word868_4_370 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_368 word868_4_369

def word868_4_371 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_361 word868_4_370

def word868_4_372 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_371

def word868_4_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1237, 1221)]

def word868_4_374 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_372 word868_4_373

def word868_4_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1237, 1149)]

def word868_4_376 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_375

def word868_4_377 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 1153 (Flapjack.WordRegImm.reg 1169) word868_4_374 word868_4_376

def word868_4_378 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_350 word868_4_377

def word868_4_379 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_378 word868_4_29

def word868_4_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1253, 1137)]

def word868_4_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1257, 1141)]

def word868_4_382 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_380 word868_4_381

def word868_4_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1261, 1145)]

def word868_4_384 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_382 word868_4_383

def word868_4_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1265 (Flapjack.WordLangAddr.addr 1261 18446744073709551144#64))

def word868_4_386 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_384 word868_4_385

def word868_4_387 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_379 word868_4_386

def word868_4_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1269, 1237)]

def word868_4_389 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_387 word868_4_388

def word868_4_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1277 32#64)

def word868_4_391 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_389 word868_4_390

def word868_4_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1283, 1081), (1287, 1085), (1291, 1089), (1295, 1093), (1299, 1097), (1303, 1101), (1307, 1269), (1311, 1105),
    (1315, 1109), (1319, 1113), (1323, 1117)]

def word868_4_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1265), (4, 1269), (6, 1277)]

def word868_4_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1329, 1283), (1333, 1287), (1337, 1291), (1341, 1295), (1345, 1299), (1349, 1303), (1353, 1307), (1357, 1311),
    (1361, 1315), (1365, 1319), (1369, 1323)]

def word868_4_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1377, 2)]

def word868_4_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1377)]

def word868_4_397 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_396 word868_4_19

def word868_4_398 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_395 word868_4_397

def word868_4_399 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_394 word868_4_398

def word868_4_400 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_394, 868, 20)) (some 860) ([2, 4, 6]) (some (2, word868_4_399, 868, 21))

def word868_4_401 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_393 word868_4_400

def word868_4_402 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_392 word868_4_401

def word868_4_403 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_391 word868_4_402

def word868_4_404 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_403 word868_4_29

def word868_4_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1391, 1329), (1395, 1333), (1399, 1337), (1403, 1341), (1407, 1345), (1411, 1349), (1415, 1353), (1419, 1357),
    (1423, 1361), (1427, 1365), (1431, 1369)]

def word868_4_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1437, 1391), (1441, 1395), (1445, 1399), (1449, 1403), (1453, 1407), (1457, 1411), (1461, 1415), (1465, 1419),
    (1469, 1423), (1473, 1427), (1477, 1431)]

def word868_4_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1485, 2)]

def word868_4_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1485)]

def word868_4_409 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_408 word868_4_19

def word868_4_410 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_407 word868_4_409

def word868_4_411 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_406 word868_4_410

def word868_4_412 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), word868_4_406, 868, 22)) (some 387) ([]) (some (2, word868_4_411, 868, 23))

def word868_4_413 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_405 word868_4_412

def word868_4_414 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_404 word868_4_413

def word868_4_415 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_414 word868_4_29

def word868_4_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1501 1#64)

def word868_4_417 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_415 word868_4_416

def word868_4_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1507, 1437), (1511, 1441), (1515, 1445), (1519, 1449), (1523, 1453), (1527, 1457), (1531, 1461), (1535, 1465),
    (1539, 1469), (1543, 1473), (1547, 1477)]

def word868_4_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1501)]

def word868_4_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1553, 1507), (1557, 1511), (1561, 1515), (1565, 1519), (1569, 1523), (1573, 1527), (1577, 1531), (1581, 1535),
    (1585, 1539), (1589, 1543), (1593, 1547)]

def word868_4_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1601, 2)]

def word868_4_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1601)]

def word868_4_423 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_422 word868_4_19

def word868_4_424 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_421 word868_4_423

def word868_4_425 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_420 word868_4_424

def word868_4_426 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))))),
  Flapjack.Spt.ln)), word868_4_420, 868, 24)) (some 434) ([2]) (some (2, word868_4_425, 868, 25))

def word868_4_427 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_419 word868_4_426

def word868_4_428 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_418 word868_4_427

def word868_4_429 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_417 word868_4_428

def word868_4_430 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_429 word868_4_29

def word868_4_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1613, 1593)]

def word868_4_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1617 (Flapjack.WordLangAddr.addr 1613 32#64))

def word868_4_433 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_431 word868_4_432

def word868_4_434 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_430 word868_4_433

def word868_4_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 0#64)

def word868_4_436 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_434 word868_4_435

def word868_4_437 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_436 word868_4_29

def word868_4_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1625, 1553), (1629, 1557), (1633, 1621), (1637, 1561), (1641, 1565), (1645, 1569), (1649, 1573), (1653, 1577),
    (1657, 1581), (1661, 1585), (1665, 1589), (1669, 1613), (1673, 1617)]

def word868_4_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1677, 1633)]

def word868_4_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1681, 1657)]

def word868_4_441 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_439 word868_4_440

def word868_4_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1693, 1677)]

def word868_4_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1697 1693 (Flapjack.WordRegImm.imm 4#64)))

def word868_4_444 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_442 word868_4_443

def word868_4_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1701, 1673)]

def word868_4_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1705 1697 (Flapjack.WordRegImm.reg 1701)))

def word868_4_447 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_445 word868_4_446

def word868_4_448 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_444 word868_4_447

def word868_4_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1709 (Flapjack.WordLangAddr.addr 1705 0#64))

def word868_4_450 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_448 word868_4_449

def word868_4_451 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_450

def word868_4_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1713, 1693)]

def word868_4_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1717, 1697)]

def word868_4_454 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_452 word868_4_453

def word868_4_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1721, 1701)]

def word868_4_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1725, 1705)]

def word868_4_457 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_455 word868_4_456

def word868_4_458 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_454 word868_4_457

def word868_4_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1729 (Flapjack.WordLangAddr.addr 1725 8#64))

def word868_4_460 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_458 word868_4_459

def word868_4_461 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_451 word868_4_460

def word868_4_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1735, 1625), (1739, 1629), (1743, 1713), (1747, 1637), (1751, 1641), (1755, 1645), (1759, 1649), (1763, 1653),
    (1767, 1681), (1771, 1661), (1775, 1665), (1779, 1669), (1783, 1721)]

def word868_4_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1709), (4, 1729)]

def word868_4_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1789, 1735), (1793, 1739), (1797, 1743), (1801, 1747), (1805, 1751), (1809, 1755), (1813, 1759), (1817, 1763),
    (1821, 1767), (1825, 1771), (1829, 1775), (1833, 1779), (1837, 1783)]

def word868_4_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1841, 2)]

def word868_4_466 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_464 word868_4_465

def word868_4_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1853, 1841)]

def word868_4_468 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_466 word868_4_467

def word868_4_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1845, 2)]

def word868_4_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1845)]

def word868_4_471 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_470 word868_4_19

def word868_4_472 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_469 word868_4_471

def word868_4_473 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_464 word868_4_472

def word868_4_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1853 0#64)

def word868_4_475 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_473 word868_4_474

def word868_4_476 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_468, 868, 26)) (some 346) ([2, 4]) (some (2, word868_4_475, 868, 27))

def word868_4_477 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_463 word868_4_476

def word868_4_478 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_462 word868_4_477

def word868_4_479 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_461 word868_4_478

def word868_4_480 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_479 word868_4_29

def word868_4_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1857, 1853)]

def word868_4_482 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_480 word868_4_481

def word868_4_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1861, 1797)]

def word868_4_484 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_482 word868_4_483

def word868_4_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1867, 1789), (1871, 1793), (1875, 1861), (1879, 1801), (1883, 1805), (1887, 1809), (1891, 1813), (1895, 1817),
    (1899, 1821), (1903, 1825), (1907, 1829), (1911, 1833), (1915, 1837)]

def word868_4_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1857), (4, 1861)]

def word868_4_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1921, 1867), (1925, 1871), (1929, 1875), (1933, 1879), (1937, 1883), (1941, 1887), (1945, 1891), (1949, 1895),
    (1953, 1899), (1957, 1903), (1961, 1907), (1965, 1911), (1969, 1915)]

def word868_4_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1977, 2)]

def word868_4_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1977)]

def word868_4_490 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_489 word868_4_19

def word868_4_491 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_488 word868_4_490

def word868_4_492 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_487 word868_4_491

def word868_4_493 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_487, 868, 28)) (some 863) ([2, 4]) (some (2, word868_4_492, 868, 29))

def word868_4_494 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_486 word868_4_493

def word868_4_495 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_485 word868_4_494

def word868_4_496 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_484 word868_4_495

def word868_4_497 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_496 word868_4_29

def word868_4_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1989, 1929)]

def word868_4_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1993 1989 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_500 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_498 word868_4_499

def word868_4_501 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_497 word868_4_500

def word868_4_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1997, 1993)]

def word868_4_503 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_501 word868_4_502

def word868_4_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1625, 1921), (1629, 1925), (1633, 1997), (1637, 1933), (1641, 1937), (1645, 1941), (1649, 1945), (1653, 1949),
    (1657, 1953), (1661, 1957), (1665, 1961), (1669, 1965), (1673, 1969)]

def word868_4_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word868_4_506 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_504 word868_4_505

def word868_4_507 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_503 word868_4_506

def word868_4_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2065, 1921), (2061, 1925), (2057, 1997), (2053, 1933), (2049, 1937), (2045, 1941), (2041, 1945), (2037, 1949),
    (2033, 1953), (2025, 1957), (2021, 1961), (2017, 1965), (2009, 1969)]

def word868_4_509 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_507 word868_4_508

def word868_4_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1657, 1681)]

def word868_4_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word868_4_512 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_510 word868_4_511

def word868_4_513 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_512

def word868_4_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2065, 1625), (2061, 1629), (2057, 1677), (2053, 1637), (2049, 1641), (2045, 1645), (2041, 1649), (2037, 1653),
    (2033, 1681), (2025, 1661), (2021, 1665), (2017, 1669), (2009, 1673)]

def word868_4_515 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_513 word868_4_514

def word868_4_516 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 1677 (Flapjack.WordRegImm.reg 1681) word868_4_509 word868_4_515

def word868_4_517 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_441 word868_4_516

def word868_4_518 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_517 word868_4_29

def word868_4_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1625, 2065), (1629, 2061), (1633, 2057), (1637, 2053), (1641, 2049), (1645, 2045), (1649, 2041), (1653, 2037),
    (1657, 2033), (1661, 2025), (1665, 2021), (1669, 2017), (1673, 2009)]

def word868_4_520 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_518 word868_4_519

def word868_4_521 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)) word868_4_520 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln))

def word868_4_522 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_438 word868_4_521

def word868_4_523 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_437 word868_4_522

def word868_4_524 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_523 word868_4_29

def word868_4_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2077 Flapjack.WordStore.heapLength

def word868_4_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2081 2077 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_527 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_525 word868_4_526

def word868_4_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2085 2081

def word868_4_529 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_527 word868_4_528

def word868_4_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2089 2085 (Flapjack.WordRegImm.imm 18446744073709551392#64)))

def word868_4_531 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_529 word868_4_530

def word868_4_532 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_524 word868_4_531

def word868_4_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2093, 1657)]

def word868_4_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2097 2093 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_535 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_533 word868_4_534

def word868_4_536 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_532 word868_4_535

def word868_4_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2101, 2097)]

def word868_4_538 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_536 word868_4_537

def word868_4_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2105, 2089)]

def word868_4_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2101 (Flapjack.WordLangAddr.addr 2105 0#64))

def word868_4_541 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_539 word868_4_540

def word868_4_542 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_538 word868_4_541

def word868_4_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2109, 1669)]

def word868_4_544 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_542 word868_4_543

def word868_4_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2115, 1625), (2119, 1641), (2123, 1645), (2127, 1649), (2131, 2093), (2135, 2109)]

def word868_4_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2109)]

def word868_4_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2141, 2115), (2145, 2119), (2149, 2123), (2153, 2127), (2157, 2131), (2161, 2135)]

def word868_4_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2169, 2)]

def word868_4_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2169)]

def word868_4_550 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_549 word868_4_19

def word868_4_551 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_548 word868_4_550

def word868_4_552 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_547 word868_4_551

def word868_4_553 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word868_4_547, 868, 30)) (some 865) ([2]) (some (2, word868_4_552, 868, 31))

def word868_4_554 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_546 word868_4_553

def word868_4_555 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_545 word868_4_554

def word868_4_556 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_544 word868_4_555

def word868_4_557 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_556 word868_4_29

def word868_4_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2183, 2141), (2187, 2145), (2191, 2149), (2195, 2153), (2199, 2157), (2203, 2161)]

def word868_4_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2209, 2183), (2213, 2187), (2217, 2191), (2221, 2195), (2225, 2199), (2229, 2203)]

def word868_4_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2237, 2)]

def word868_4_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2237)]

def word868_4_562 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_561 word868_4_19

def word868_4_563 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_560 word868_4_562

def word868_4_564 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_559 word868_4_563

def word868_4_565 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word868_4_559, 868, 32)) (some 867) ([]) (some (2, word868_4_564, 868, 33))

def word868_4_566 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_558 word868_4_565

def word868_4_567 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_557 word868_4_566

def word868_4_568 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_567 word868_4_29

def word868_4_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2251, 2209), (2255, 2213), (2259, 2217), (2263, 2221), (2267, 2225), (2271, 2229)]

def word868_4_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2277, 2251), (2281, 2255), (2285, 2259), (2289, 2263), (2293, 2267), (2297, 2271)]

def word868_4_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2301, 2), (2305, 4)]

def word868_4_572 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_570 word868_4_571

def word868_4_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2317, 2305)]

def word868_4_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2321, 2301)]

def word868_4_575 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_573 word868_4_574

def word868_4_576 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_572 word868_4_575

def word868_4_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2309, 2)]

def word868_4_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2309)]

def word868_4_579 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_578 word868_4_19

def word868_4_580 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_577 word868_4_579

def word868_4_581 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_570 word868_4_580

def word868_4_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2317 0#64)

def word868_4_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2321 0#64)

def word868_4_584 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_582 word868_4_583

def word868_4_585 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_581 word868_4_584

def word868_4_586 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_576, 868, 34)) (some 460) ([]) (some (2, word868_4_585, 868, 35))

def word868_4_587 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_569 word868_4_586

def word868_4_588 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_568 word868_4_587

def word868_4_589 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_588 word868_4_29

def word868_4_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2325 Flapjack.WordStore.heapLength

def word868_4_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2329 2325 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_592 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_590 word868_4_591

def word868_4_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2333 2329

def word868_4_594 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_592 word868_4_593

def word868_4_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2337 (Flapjack.WordLangAddr.addr 2333 18446744073709551208#64))

def word868_4_596 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_594 word868_4_595

def word868_4_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2341 (Flapjack.WordLangAddr.addr 2337 8#64))

def word868_4_598 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_596 word868_4_597

def word868_4_599 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_589 word868_4_598

def word868_4_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2347, 2277), (2351, 2321), (2355, 2281), (2359, 2285), (2363, 2289), (2367, 2293), (2371, 2317), (2375, 2297)]

def word868_4_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2341)]

def word868_4_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2381, 2347), (2385, 2351), (2389, 2355), (2393, 2359), (2397, 2363), (2401, 2367), (2405, 2371), (2409, 2375)]

def word868_4_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2417, 2)]

def word868_4_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2417)]

def word868_4_605 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_604 word868_4_19

def word868_4_606 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_603 word868_4_605

def word868_4_607 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_602 word868_4_606

def word868_4_608 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), word868_4_602, 868, 36)) (some 461) ([2]) (some (2, word868_4_607, 868, 37))

def word868_4_609 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_601 word868_4_608

def word868_4_610 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_600 word868_4_609

def word868_4_611 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_599 word868_4_610

def word868_4_612 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_611 word868_4_29

def word868_4_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2433 32#64)

def word868_4_614 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_612 word868_4_613

def word868_4_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2439, 2381), (2443, 2385), (2447, 2389), (2451, 2393), (2455, 2397), (2459, 2401), (2463, 2405), (2467, 2409)]

def word868_4_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2433)]

def word868_4_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2473, 2439), (2477, 2443), (2481, 2447), (2485, 2451), (2489, 2455), (2493, 2459), (2497, 2463), (2501, 2467)]

def word868_4_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2505, 2)]

def word868_4_619 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_617 word868_4_618

def word868_4_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2513, 2505)]

def word868_4_621 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_619 word868_4_620

def word868_4_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2509, 2)]

def word868_4_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2509)]

def word868_4_624 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_623 word868_4_19

def word868_4_625 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_622 word868_4_624

def word868_4_626 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_617 word868_4_625

def word868_4_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2513 0#64)

def word868_4_628 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_626 word868_4_627

def word868_4_629 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_621, 868, 38)) (some 68) ([2]) (some (2, word868_4_628, 868, 39))

def word868_4_630 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_616 word868_4_629

def word868_4_631 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_615 word868_4_630

def word868_4_632 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_614 word868_4_631

def word868_4_633 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_632 word868_4_29

def word868_4_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2521, 2513)]

def word868_4_635 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_633 word868_4_634

def word868_4_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2527, 2473), (2531, 2477), (2535, 2481), (2539, 2485), (2543, 2489), (2547, 2493), (2551, 2497), (2555, 2501),
    (2559, 2521)]

def word868_4_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2521)]

def word868_4_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2565, 2527), (2569, 2531), (2573, 2535), (2577, 2539), (2581, 2543), (2585, 2547), (2589, 2551), (2593, 2555),
    (2597, 2559)]

def word868_4_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2605, 2)]

def word868_4_640 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2605)]

def word868_4_641 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_640 word868_4_19

def word868_4_642 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_639 word868_4_641

def word868_4_643 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_638 word868_4_642

def word868_4_644 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                      Flapjack.Spt.ln))))))))),
  Flapjack.Spt.ln)), word868_4_638, 868, 40)) (some 850) ([2]) (some (2, word868_4_643, 868, 41))

def word868_4_645 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_637 word868_4_644

def word868_4_646 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_636 word868_4_645

def word868_4_647 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_635 word868_4_646

def word868_4_648 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_647 word868_4_29

def word868_4_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2621 32#64)

def word868_4_650 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_648 word868_4_649

def word868_4_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2627, 2565), (2631, 2569), (2635, 2573), (2639, 2577), (2643, 2581), (2647, 2585), (2651, 2589), (2655, 2593),
    (2659, 2597)]

def word868_4_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2621)]

def word868_4_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2665, 2627), (2669, 2631), (2673, 2635), (2677, 2639), (2681, 2643), (2685, 2647), (2689, 2651), (2693, 2655),
    (2697, 2659)]

def word868_4_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2701, 2)]

def word868_4_655 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_653 word868_4_654

def word868_4_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2713, 2701)]

def word868_4_657 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_655 word868_4_656

def word868_4_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2705, 2)]

def word868_4_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2705)]

def word868_4_660 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_659 word868_4_19

def word868_4_661 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_658 word868_4_660

def word868_4_662 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_653 word868_4_661

def word868_4_663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 0#64)

def word868_4_664 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_662 word868_4_663

def word868_4_665 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_657, 868, 42)) (some 68) ([2]) (some (2, word868_4_664, 868, 43))

def word868_4_666 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_652 word868_4_665

def word868_4_667 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_651 word868_4_666

def word868_4_668 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_650 word868_4_667

def word868_4_669 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_668 word868_4_29

def word868_4_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2717, 2681)]

def word868_4_671 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_669 word868_4_670

def word868_4_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2721, 2685)]

def word868_4_673 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_671 word868_4_672

def word868_4_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2725, 2713)]

def word868_4_675 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_673 word868_4_674

def word868_4_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2731, 2665), (2735, 2669), (2739, 2673), (2743, 2677), (2747, 2721), (2751, 2689), (2755, 2693), (2759, 2725),
    (2763, 2697)]

def word868_4_677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2717), (4, 2721), (6, 2725)]

def word868_4_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2769, 2731), (2773, 2735), (2777, 2739), (2781, 2743), (2785, 2747), (2789, 2751), (2793, 2755), (2797, 2759),
    (2801, 2763)]

def word868_4_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2809, 2)]

def word868_4_680 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2809)]

def word868_4_681 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_680 word868_4_19

def word868_4_682 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_679 word868_4_681

def word868_4_683 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_678 word868_4_682

def word868_4_684 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), word868_4_678, 868, 44)) (some 332) ([2, 4, 6]) (some (2, word868_4_683, 868, 45))

def word868_4_685 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_677 word868_4_684

def word868_4_686 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_676 word868_4_685

def word868_4_687 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_675 word868_4_686

def word868_4_688 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_687 word868_4_29

def word868_4_689 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2825 32#64)

def word868_4_690 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_688 word868_4_689

def word868_4_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2831, 2769), (2835, 2773), (2839, 2777), (2843, 2781), (2847, 2785), (2851, 2789), (2855, 2793), (2859, 2797),
    (2863, 2801)]

def word868_4_692 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2825)]

def word868_4_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2869, 2831), (2873, 2835), (2877, 2839), (2881, 2843), (2885, 2847), (2889, 2851), (2893, 2855), (2897, 2859),
    (2901, 2863)]

def word868_4_694 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2905, 2)]

def word868_4_695 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_693 word868_4_694

def word868_4_696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2913, 2905)]

def word868_4_697 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_695 word868_4_696

def word868_4_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2909, 2)]

def word868_4_699 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2909)]

def word868_4_700 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_699 word868_4_19

def word868_4_701 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_698 word868_4_700

def word868_4_702 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_693 word868_4_701

def word868_4_703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2913 0#64)

def word868_4_704 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_702 word868_4_703

def word868_4_705 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_697, 868, 46)) (some 68) ([2]) (some (2, word868_4_704, 868, 47))

def word868_4_706 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_692 word868_4_705

def word868_4_707 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_691 word868_4_706

def word868_4_708 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_690 word868_4_707

def word868_4_709 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_708 word868_4_29

def word868_4_710 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2921, 2877)]

def word868_4_711 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_709 word868_4_710

def word868_4_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2925, 2885)]

def word868_4_713 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_711 word868_4_712

def word868_4_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2929, 2913)]

def word868_4_715 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_713 word868_4_714

def word868_4_716 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2935, 2869), (2939, 2873), (2943, 2881), (2947, 2889), (2951, 2893), (2955, 2897), (2959, 2901), (2963, 2929)]

def word868_4_717 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2921), (4, 2925), (6, 2929)]

def word868_4_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2969, 2935), (2973, 2939), (2977, 2943), (2981, 2947), (2985, 2951), (2989, 2955), (2993, 2959), (2997, 2963)]

def word868_4_719 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3005, 2)]

def word868_4_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3005)]

def word868_4_721 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_720 word868_4_19

def word868_4_722 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_719 word868_4_721

def word868_4_723 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_718 word868_4_722

def word868_4_724 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), word868_4_718, 868, 48)) (some 332) ([2, 4, 6]) (some (2, word868_4_723, 868, 49))

def word868_4_725 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_717 word868_4_724

def word868_4_726 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_716 word868_4_725

def word868_4_727 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_715 word868_4_726

def word868_4_728 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_727 word868_4_29

def word868_4_729 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3021 256#64)

def word868_4_730 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_728 word868_4_729

def word868_4_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3027, 2969), (3031, 2973), (3035, 2977), (3039, 2981), (3043, 2985), (3047, 2989), (3051, 2993), (3055, 2997)]

def word868_4_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3021)]

def word868_4_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3061, 3027), (3065, 3031), (3069, 3035), (3073, 3039), (3077, 3043), (3081, 3047), (3085, 3051), (3089, 3055)]

def word868_4_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3093, 2)]

def word868_4_735 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_733 word868_4_734

def word868_4_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3101, 3093)]

def word868_4_737 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_735 word868_4_736

def word868_4_738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3097, 2)]

def word868_4_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3097)]

def word868_4_740 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_739 word868_4_19

def word868_4_741 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_738 word868_4_740

def word868_4_742 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_733 word868_4_741

def word868_4_743 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3101 0#64)

def word868_4_744 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_742 word868_4_743

def word868_4_745 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_737, 868, 50)) (some 68) ([2]) (some (2, word868_4_744, 868, 51))

def word868_4_746 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_732 word868_4_745

def word868_4_747 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_731 word868_4_746

def word868_4_748 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_730 word868_4_747

def word868_4_749 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_748 word868_4_29

def word868_4_750 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3109 Flapjack.WordStore.heapLength

def word868_4_751 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3113 3109 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_752 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_750 word868_4_751

def word868_4_753 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3117 3113

def word868_4_754 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_752 word868_4_753

def word868_4_755 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3121 (Flapjack.WordLangAddr.addr 3117 18446744073709551200#64))

def word868_4_756 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_754 word868_4_755

def word868_4_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3125 (Flapjack.WordLangAddr.addr 3121 40#64))

def word868_4_758 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_756 word868_4_757

def word868_4_759 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_749 word868_4_758

def word868_4_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3129, 3101)]

def word868_4_761 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_759 word868_4_760

def word868_4_762 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3135, 3061), (3139, 3065), (3143, 3069), (3147, 3073), (3151, 3129), (3155, 3077), (3159, 3081), (3163, 3085),
    (3167, 3089)]

def word868_4_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3125), (4, 3129)]

def word868_4_764 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3173, 3135), (3177, 3139), (3181, 3143), (3185, 3147), (3189, 3151), (3193, 3155), (3197, 3159), (3201, 3163),
    (3205, 3167)]

def word868_4_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3213, 2)]

def word868_4_766 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3213)]

def word868_4_767 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_766 word868_4_19

def word868_4_768 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_765 word868_4_767

def word868_4_769 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_764 word868_4_768

def word868_4_770 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), word868_4_764, 868, 52)) (some 839) ([2, 4]) (some (2, word868_4_769, 868, 53))

def word868_4_771 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_763 word868_4_770

def word868_4_772 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_762 word868_4_771

def word868_4_773 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_761 word868_4_772

def word868_4_774 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_773 word868_4_29

def word868_4_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3229 32#64)

def word868_4_776 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_774 word868_4_775

def word868_4_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3235, 3173), (3239, 3177), (3243, 3181), (3247, 3185), (3251, 3189), (3255, 3193), (3259, 3197), (3263, 3201),
    (3267, 3205)]

def word868_4_778 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3229)]

def word868_4_779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3273, 3235), (3277, 3239), (3281, 3243), (3285, 3247), (3289, 3251), (3293, 3255), (3297, 3259), (3301, 3263),
    (3305, 3267)]

def word868_4_780 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3309, 2)]

def word868_4_781 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_779 word868_4_780

def word868_4_782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3321, 3309)]

def word868_4_783 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_781 word868_4_782

def word868_4_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3313, 2)]

def word868_4_785 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3313)]

def word868_4_786 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_785 word868_4_19

def word868_4_787 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_784 word868_4_786

def word868_4_788 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_779 word868_4_787

def word868_4_789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3321 0#64)

def word868_4_790 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_788 word868_4_789

def word868_4_791 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), word868_4_783, 868, 54)) (some 68) ([2]) (some (2, word868_4_790, 868, 55))

def word868_4_792 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_778 word868_4_791

def word868_4_793 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_777 word868_4_792

def word868_4_794 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_776 word868_4_793

def word868_4_795 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_794 word868_4_29

def word868_4_796 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3325 Flapjack.WordStore.heapLength

def word868_4_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3329 3325 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_798 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_796 word868_4_797

def word868_4_799 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3333 3329

def word868_4_800 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_798 word868_4_799

def word868_4_801 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3337 (Flapjack.WordLangAddr.addr 3333 18446744073709551088#64))

def word868_4_802 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_800 word868_4_801

def word868_4_803 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_795 word868_4_802

def word868_4_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3341, 3293)]

def word868_4_805 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3345 (Flapjack.WordLangAddr.addr 3341 56#64))

def word868_4_806 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_804 word868_4_805

def word868_4_807 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_803 word868_4_806

def word868_4_808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3349, 3321)]

def word868_4_809 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_807 word868_4_808

def word868_4_810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3355, 3273), (3359, 3277), (3363, 3281), (3367, 3349), (3371, 3285), (3375, 3289), (3379, 3297), (3383, 3301),
    (3387, 3305)]

def word868_4_811 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3337), (4, 3345), (6, 3349)]

def word868_4_812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3393, 3355), (3397, 3359), (3401, 3363), (3405, 3367), (3409, 3371), (3413, 3375), (3417, 3379), (3421, 3383),
    (3425, 3387)]

def word868_4_813 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3433, 2)]

def word868_4_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3433)]

def word868_4_815 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_814 word868_4_19

def word868_4_816 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_813 word868_4_815

def word868_4_817 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_812 word868_4_816

def word868_4_818 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_812, 868, 56)) (some 332) ([2, 4, 6]) (some (2, word868_4_817, 868, 57))

def word868_4_819 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_811 word868_4_818

def word868_4_820 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_810 word868_4_819

def word868_4_821 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_809 word868_4_820

def word868_4_822 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_821 word868_4_29

def word868_4_823 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3449 32#64)

def word868_4_824 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_822 word868_4_823

def word868_4_825 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3455, 3393), (3459, 3397), (3463, 3401), (3467, 3405), (3471, 3409), (3475, 3413), (3479, 3417), (3483, 3421),
    (3487, 3425)]

def word868_4_826 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3449)]

def word868_4_827 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3493, 3455), (3497, 3459), (3501, 3463), (3505, 3467), (3509, 3471), (3513, 3475), (3517, 3479), (3521, 3483),
    (3525, 3487)]

def word868_4_828 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3529, 2)]

def word868_4_829 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_827 word868_4_828

def word868_4_830 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3537, 3529)]

def word868_4_831 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_829 word868_4_830

def word868_4_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3533, 2)]

def word868_4_833 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3533)]

def word868_4_834 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_833 word868_4_19

def word868_4_835 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_832 word868_4_834

def word868_4_836 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_827 word868_4_835

def word868_4_837 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3537 0#64)

def word868_4_838 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_836 word868_4_837

def word868_4_839 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), word868_4_831, 868, 58)) (some 68) ([2]) (some (2, word868_4_838, 868, 59))

def word868_4_840 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_826 word868_4_839

def word868_4_841 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_825 word868_4_840

def word868_4_842 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_824 word868_4_841

def word868_4_843 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_842 word868_4_29

def word868_4_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3545 Flapjack.WordStore.heapLength

def word868_4_845 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3549 3545 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_846 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_844 word868_4_845

def word868_4_847 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3553 3549

def word868_4_848 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_846 word868_4_847

def word868_4_849 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3557 (Flapjack.WordLangAddr.addr 3553 18446744073709551200#64))

def word868_4_850 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_848 word868_4_849

def word868_4_851 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3561 (Flapjack.WordLangAddr.addr 3557 56#64))

def word868_4_852 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_850 word868_4_851

def word868_4_853 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_843 word868_4_852

def word868_4_854 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3565, 3545)]

def word868_4_855 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3569, 3549)]

def word868_4_856 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_854 word868_4_855

def word868_4_857 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3573, 3553)]

def word868_4_858 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_856 word868_4_857

def word868_4_859 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3577, 3557)]

def word868_4_860 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_858 word868_4_859

def word868_4_861 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3581 (Flapjack.WordLangAddr.addr 3577 64#64))

def word868_4_862 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_860 word868_4_861

def word868_4_863 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_853 word868_4_862

def word868_4_864 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3585, 3537)]

def word868_4_865 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_863 word868_4_864

def word868_4_866 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3591, 3493), (3595, 3497), (3599, 3501), (3603, 3505), (3607, 3509), (3611, 3513), (3615, 3517), (3619, 3521),
    (3623, 3585), (3627, 3525)]

def word868_4_867 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3561), (4, 3581), (6, 3585)]

def word868_4_868 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3633, 3591), (3637, 3595), (3641, 3599), (3645, 3603), (3649, 3607), (3653, 3611), (3657, 3615), (3661, 3619),
    (3665, 3623), (3669, 3627)]

def word868_4_869 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3677, 2)]

def word868_4_870 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3677)]

def word868_4_871 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_870 word868_4_19

def word868_4_872 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_869 word868_4_871

def word868_4_873 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_868 word868_4_872

def word868_4_874 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_868, 868, 60)) (some 847) ([2, 4, 6]) (some (2, word868_4_873, 868, 61))

def word868_4_875 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_867 word868_4_874

def word868_4_876 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_866 word868_4_875

def word868_4_877 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_865 word868_4_876

def word868_4_878 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_877 word868_4_29

def word868_4_879 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3693 32#64)

def word868_4_880 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_878 word868_4_879

def word868_4_881 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3699, 3633), (3703, 3637), (3707, 3641), (3711, 3645), (3715, 3649), (3719, 3653), (3723, 3657), (3727, 3661),
    (3731, 3665), (3735, 3669)]

def word868_4_882 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3693)]

def word868_4_883 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3741, 3699), (3745, 3703), (3749, 3707), (3753, 3711), (3757, 3715), (3761, 3719), (3765, 3723), (3769, 3727),
    (3773, 3731), (3777, 3735)]

def word868_4_884 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3781, 2)]

def word868_4_885 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_883 word868_4_884

def word868_4_886 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3789, 3781)]

def word868_4_887 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_885 word868_4_886

def word868_4_888 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3785, 2)]

def word868_4_889 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3785)]

def word868_4_890 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_889 word868_4_19

def word868_4_891 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_888 word868_4_890

def word868_4_892 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_883 word868_4_891

def word868_4_893 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3789 0#64)

def word868_4_894 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_892 word868_4_893

def word868_4_895 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), word868_4_887, 868, 62)) (some 68) ([2]) (some (2, word868_4_894, 868, 63))

def word868_4_896 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_882 word868_4_895

def word868_4_897 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_881 word868_4_896

def word868_4_898 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_880 word868_4_897

def word868_4_899 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_898 word868_4_29

def word868_4_900 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3797, 3745)]

def word868_4_901 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_899 word868_4_900

def word868_4_902 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3801, 3757)]

def word868_4_903 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_901 word868_4_902

def word868_4_904 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3805, 3789)]

def word868_4_905 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_903 word868_4_904

def word868_4_906 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3811, 3741), (3815, 3749), (3819, 3753), (3823, 3761), (3827, 3765), (3831, 3805), (3835, 3769), (3839, 3773),
    (3843, 3777)]

def word868_4_907 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3797), (4, 3801), (6, 3805)]

def word868_4_908 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3849, 3811), (3853, 3815), (3857, 3819), (3861, 3823), (3865, 3827), (3869, 3831), (3873, 3835), (3877, 3839),
    (3881, 3843)]

def word868_4_909 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3889, 2)]

def word868_4_910 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3889)]

def word868_4_911 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_910 word868_4_19

def word868_4_912 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_909 word868_4_911

def word868_4_913 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_908 word868_4_912

def word868_4_914 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))))),
  Flapjack.Spt.ln)), word868_4_908, 868, 64)) (some 158) ([2, 4, 6]) (some (2, word868_4_913, 868, 65))

def word868_4_915 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_907 word868_4_914

def word868_4_916 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_906 word868_4_915

def word868_4_917 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_905 word868_4_916

def word868_4_918 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_917 word868_4_29

def word868_4_919 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3901 Flapjack.WordStore.heapLength

def word868_4_920 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3905 3901 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_921 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_919 word868_4_920

def word868_4_922 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3909 3905

def word868_4_923 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_921 word868_4_922

def word868_4_924 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3913 (Flapjack.WordLangAddr.addr 3909 18446744073709551200#64))

def word868_4_925 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_923 word868_4_924

def word868_4_926 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3917 (Flapjack.WordLangAddr.addr 3913 0#64))

def word868_4_927 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_925 word868_4_926

def word868_4_928 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_918 word868_4_927

def word868_4_929 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3921, 3901)]

def word868_4_930 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3925, 3905)]

def word868_4_931 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_929 word868_4_930

def word868_4_932 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3929, 3909)]

def word868_4_933 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_931 word868_4_932

def word868_4_934 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3933, 3913)]

def word868_4_935 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_933 word868_4_934

def word868_4_936 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3937 (Flapjack.WordLangAddr.addr 3933 8#64))

def word868_4_937 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_935 word868_4_936

def word868_4_938 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_928 word868_4_937

def word868_4_939 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3943, 3849), (3947, 3853), (3951, 3857), (3955, 3861), (3959, 3865), (3963, 3869), (3967, 3873), (3971, 3877),
    (3975, 3881)]

def word868_4_940 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3917), (4, 3937)]

def word868_4_941 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3981, 3943), (3985, 3947), (3989, 3951), (3993, 3955), (3997, 3959), (4001, 3963), (4005, 3967), (4009, 3971),
    (4013, 3975)]

def word868_4_942 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4017, 2)]

def word868_4_943 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_941 word868_4_942

def word868_4_944 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4025, 4017)]

def word868_4_945 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_943 word868_4_944

def word868_4_946 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4021, 2)]

def word868_4_947 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4021)]

def word868_4_948 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_947 word868_4_19

def word868_4_949 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_946 word868_4_948

def word868_4_950 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_941 word868_4_949

def word868_4_951 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4025 0#64)

def word868_4_952 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_950 word868_4_951

def word868_4_953 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))),
  Flapjack.Spt.ln)), word868_4_945, 868, 66)) (some 93) ([2, 4]) (some (2, word868_4_952, 868, 67))

def word868_4_954 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_940 word868_4_953

def word868_4_955 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_939 word868_4_954

def word868_4_956 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_938 word868_4_955

def word868_4_957 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_956 word868_4_29

def word868_4_958 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4033, 4025)]

def word868_4_959 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_957 word868_4_958

def word868_4_960 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4037, 3985)]

def word868_4_961 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4041 (Flapjack.WordLangAddr.addr 4037 112#64))

def word868_4_962 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_960 word868_4_961

def word868_4_963 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_959 word868_4_962

def word868_4_964 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4053 110#64)

def word868_4_965 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_964

def word868_4_966 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4057, 4053)]

def word868_4_967 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4057)

def word868_4_968 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_966 word868_4_967

def word868_4_969 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_965 word868_4_968

def word868_4_970 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4061 4#64)

def word868_4_971 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_969 word868_4_970

def word868_4_972 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4061)]

def word868_4_973 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_972 word868_4_19

def word868_4_974 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_971 word868_4_973

def word868_4_975 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word868_4_976 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4033 (Flapjack.WordRegImm.reg 4041) word868_4_974 word868_4_975

def word868_4_977 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_976 word868_4_29

def word868_4_978 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_963 word868_4_977

def word868_4_979 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_978 word868_4_29

def word868_4_980 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4089, 3997)]

def word868_4_981 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_979 word868_4_980

def word868_4_982 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4093, 4037)]

def word868_4_983 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4097 (Flapjack.WordLangAddr.addr 4093 40#64))

def word868_4_984 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_982 word868_4_983

def word868_4_985 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_981 word868_4_984

def word868_4_986 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4105 32#64)

def word868_4_987 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_985 word868_4_986

def word868_4_988 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4111, 3981), (4115, 4093), (4119, 3989), (4123, 3993), (4127, 4001), (4131, 4005), (4135, 4009), (4139, 4013)]

def word868_4_989 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4089), (4, 4097), (6, 4105)]

def word868_4_990 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4145, 4111), (4149, 4115), (4153, 4119), (4157, 4123), (4161, 4127), (4165, 4131), (4169, 4135), (4173, 4139)]

def word868_4_991 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4177, 2)]

def word868_4_992 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_990 word868_4_991

def word868_4_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4189, 4177)]

def word868_4_994 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_992 word868_4_993

def word868_4_995 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4181, 2)]

def word868_4_996 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4181)]

def word868_4_997 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_996 word868_4_19

def word868_4_998 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_995 word868_4_997

def word868_4_999 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_990 word868_4_998

def word868_4_1000 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4189 0#64)

def word868_4_1001 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_999 word868_4_1000

def word868_4_1002 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))))),
  Flapjack.Spt.ln)), word868_4_994, 868, 68)) (some 79) ([2, 4, 6]) (some (2, word868_4_1001, 868, 69))

def word868_4_1003 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_989 word868_4_1002

def word868_4_1004 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_988 word868_4_1003

def word868_4_1005 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_987 word868_4_1004

def word868_4_1006 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1005 word868_4_29

def word868_4_1007 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4193, 4189)]

def word868_4_1008 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1006 word868_4_1007

def word868_4_1009 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4197 0#64)

def word868_4_1010 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1008 word868_4_1009

def word868_4_1011 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4209 111#64)

def word868_4_1012 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_1011

def word868_4_1013 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4213, 4209)]

def word868_4_1014 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4213)

def word868_4_1015 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1013 word868_4_1014

def word868_4_1016 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1012 word868_4_1015

def word868_4_1017 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4217 4#64)

def word868_4_1018 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1016 word868_4_1017

def word868_4_1019 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4217)]

def word868_4_1020 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1019 word868_4_19

def word868_4_1021 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1018 word868_4_1020

def word868_4_1022 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4193 (Flapjack.WordRegImm.reg 4197) word868_4_1021 word868_4_975

def word868_4_1023 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1022 word868_4_29

def word868_4_1024 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1010 word868_4_1023

def word868_4_1025 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1024 word868_4_29

def word868_4_1026 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4245, 4165)]

def word868_4_1027 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1025 word868_4_1026

def word868_4_1028 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4249, 4149)]

def word868_4_1029 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4253 (Flapjack.WordLangAddr.addr 4249 32#64))

def word868_4_1030 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1028 word868_4_1029

def word868_4_1031 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1027 word868_4_1030

def word868_4_1032 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4261 32#64)

def word868_4_1033 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1031 word868_4_1032

def word868_4_1034 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4267, 4145), (4271, 4249), (4275, 4153), (4279, 4157), (4283, 4161), (4287, 4169), (4291, 4173)]

def word868_4_1035 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4245), (4, 4253), (6, 4261)]

def word868_4_1036 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4297, 4267), (4301, 4271), (4305, 4275), (4309, 4279), (4313, 4283), (4317, 4287), (4321, 4291)]

def word868_4_1037 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4325, 2)]

def word868_4_1038 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1036 word868_4_1037

def word868_4_1039 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4337, 4325)]

def word868_4_1040 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1038 word868_4_1039

def word868_4_1041 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4329, 2)]

def word868_4_1042 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4329)]

def word868_4_1043 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1042 word868_4_19

def word868_4_1044 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1041 word868_4_1043

def word868_4_1045 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1036 word868_4_1044

def word868_4_1046 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4337 0#64)

def word868_4_1047 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1045 word868_4_1046

def word868_4_1048 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), word868_4_1040, 868, 70)) (some 79) ([2, 4, 6]) (some (2, word868_4_1047, 868, 71))

def word868_4_1049 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1035 word868_4_1048

def word868_4_1050 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1034 word868_4_1049

def word868_4_1051 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1033 word868_4_1050

def word868_4_1052 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1051 word868_4_29

def word868_4_1053 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4341, 4337)]

def word868_4_1054 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1052 word868_4_1053

def word868_4_1055 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4345 0#64)

def word868_4_1056 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1054 word868_4_1055

def word868_4_1057 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4357 112#64)

def word868_4_1058 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_1057

def word868_4_1059 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4361, 4357)]

def word868_4_1060 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4361)

def word868_4_1061 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1059 word868_4_1060

def word868_4_1062 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1058 word868_4_1061

def word868_4_1063 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4365 4#64)

def word868_4_1064 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1062 word868_4_1063

def word868_4_1065 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4365)]

def word868_4_1066 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1065 word868_4_19

def word868_4_1067 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1064 word868_4_1066

def word868_4_1068 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4341 (Flapjack.WordRegImm.reg 4345) word868_4_1067 word868_4_975

def word868_4_1069 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1068 word868_4_29

def word868_4_1070 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1056 word868_4_1069

def word868_4_1071 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1070 word868_4_29

def word868_4_1072 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4393, 4321)]

def word868_4_1073 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1071 word868_4_1072

def word868_4_1074 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4397, 4301)]

def word868_4_1075 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4401 (Flapjack.WordLangAddr.addr 4397 48#64))

def word868_4_1076 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1074 word868_4_1075

def word868_4_1077 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1073 word868_4_1076

def word868_4_1078 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 32#64)

def word868_4_1079 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1077 word868_4_1078

def word868_4_1080 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4415, 4297), (4419, 4397), (4423, 4305), (4427, 4309), (4431, 4313), (4435, 4317)]

def word868_4_1081 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4393), (4, 4401), (6, 4409)]

def word868_4_1082 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4441, 4415), (4445, 4419), (4449, 4423), (4453, 4427), (4457, 4431), (4461, 4435)]

def word868_4_1083 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4465, 2)]

def word868_4_1084 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1082 word868_4_1083

def word868_4_1085 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4477, 4465)]

def word868_4_1086 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1084 word868_4_1085

def word868_4_1087 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4469, 2)]

def word868_4_1088 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4469)]

def word868_4_1089 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1088 word868_4_19

def word868_4_1090 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1087 word868_4_1089

def word868_4_1091 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1082 word868_4_1090

def word868_4_1092 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4477 0#64)

def word868_4_1093 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1091 word868_4_1092

def word868_4_1094 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))))),
  Flapjack.Spt.ln)), word868_4_1086, 868, 72)) (some 79) ([2, 4, 6]) (some (2, word868_4_1093, 868, 73))

def word868_4_1095 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1081 word868_4_1094

def word868_4_1096 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1080 word868_4_1095

def word868_4_1097 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1079 word868_4_1096

def word868_4_1098 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1097 word868_4_29

def word868_4_1099 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4481, 4477)]

def word868_4_1100 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1098 word868_4_1099

def word868_4_1101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4485 0#64)

def word868_4_1102 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1100 word868_4_1101

def word868_4_1103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4497 113#64)

def word868_4_1104 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_1103

def word868_4_1105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4501, 4497)]

def word868_4_1106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4501)

def word868_4_1107 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1105 word868_4_1106

def word868_4_1108 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1104 word868_4_1107

def word868_4_1109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 4#64)

def word868_4_1110 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1108 word868_4_1109

def word868_4_1111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4505)]

def word868_4_1112 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1111 word868_4_19

def word868_4_1113 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1110 word868_4_1112

def word868_4_1114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4481 (Flapjack.WordRegImm.reg 4485) word868_4_1113 word868_4_975

def word868_4_1115 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1114 word868_4_29

def word868_4_1116 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1102 word868_4_1115

def word868_4_1117 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1116 word868_4_29

def word868_4_1118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4533, 4453)]

def word868_4_1119 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1117 word868_4_1118

def word868_4_1120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4537, 4445)]

def word868_4_1121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4541 (Flapjack.WordLangAddr.addr 4537 56#64))

def word868_4_1122 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1120 word868_4_1121

def word868_4_1123 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1119 word868_4_1122

def word868_4_1124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4549 256#64)

def word868_4_1125 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1123 word868_4_1124

def word868_4_1126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4555, 4441), (4559, 4537), (4563, 4449), (4567, 4457), (4571, 4461)]

def word868_4_1127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4533), (4, 4541), (6, 4549)]

def word868_4_1128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4577, 4555), (4581, 4559), (4585, 4563), (4589, 4567), (4593, 4571)]

def word868_4_1129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4597, 2)]

def word868_4_1130 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1128 word868_4_1129

def word868_4_1131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4609, 4597)]

def word868_4_1132 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1130 word868_4_1131

def word868_4_1133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4601, 2)]

def word868_4_1134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4601)]

def word868_4_1135 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1134 word868_4_19

def word868_4_1136 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1133 word868_4_1135

def word868_4_1137 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1128 word868_4_1136

def word868_4_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4609 0#64)

def word868_4_1139 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1137 word868_4_1138

def word868_4_1140 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word868_4_1132, 868, 74)) (some 79) ([2, 4, 6]) (some (2, word868_4_1139, 868, 75))

def word868_4_1141 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1127 word868_4_1140

def word868_4_1142 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1126 word868_4_1141

def word868_4_1143 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1125 word868_4_1142

def word868_4_1144 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1143 word868_4_29

def word868_4_1145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4613, 4609)]

def word868_4_1146 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1144 word868_4_1145

def word868_4_1147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4617 0#64)

def word868_4_1148 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1146 word868_4_1147

def word868_4_1149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4629 114#64)

def word868_4_1150 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_1149

def word868_4_1151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4633, 4629)]

def word868_4_1152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4633)

def word868_4_1153 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1151 word868_4_1152

def word868_4_1154 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1150 word868_4_1153

def word868_4_1155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4637 4#64)

def word868_4_1156 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1154 word868_4_1155

def word868_4_1157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4637)]

def word868_4_1158 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1157 word868_4_19

def word868_4_1159 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1156 word868_4_1158

def word868_4_1160 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4613 (Flapjack.WordRegImm.reg 4617) word868_4_1159 word868_4_975

def word868_4_1161 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1160 word868_4_29

def word868_4_1162 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1148 word868_4_1161

def word868_4_1163 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1162 word868_4_29

def word868_4_1164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4665, 4585)]

def word868_4_1165 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1163 word868_4_1164

def word868_4_1166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4669, 4581)]

def word868_4_1167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4673 (Flapjack.WordLangAddr.addr 4669 192#64))

def word868_4_1168 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1166 word868_4_1167

def word868_4_1169 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1165 word868_4_1168

def word868_4_1170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4681 32#64)

def word868_4_1171 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1169 word868_4_1170

def word868_4_1172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4687, 4577), (4691, 4669), (4695, 4589), (4699, 4593)]

def word868_4_1173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4665), (4, 4673), (6, 4681)]

def word868_4_1174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4705, 4687), (4709, 4691), (4713, 4695), (4717, 4699)]

def word868_4_1175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4721, 2)]

def word868_4_1176 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1174 word868_4_1175

def word868_4_1177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4733, 4721)]

def word868_4_1178 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1176 word868_4_1177

def word868_4_1179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4725, 2)]

def word868_4_1180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4725)]

def word868_4_1181 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1180 word868_4_19

def word868_4_1182 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1179 word868_4_1181

def word868_4_1183 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1174 word868_4_1182

def word868_4_1184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4733 0#64)

def word868_4_1185 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1183 word868_4_1184

def word868_4_1186 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))),
  Flapjack.Spt.ln)), word868_4_1178, 868, 76)) (some 79) ([2, 4, 6]) (some (2, word868_4_1185, 868, 77))

def word868_4_1187 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1173 word868_4_1186

def word868_4_1188 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1172 word868_4_1187

def word868_4_1189 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1171 word868_4_1188

def word868_4_1190 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1189 word868_4_29

def word868_4_1191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4737, 4733)]

def word868_4_1192 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1190 word868_4_1191

def word868_4_1193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4741 0#64)

def word868_4_1194 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1192 word868_4_1193

def word868_4_1195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4753 115#64)

def word868_4_1196 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_1195

def word868_4_1197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4757, 4753)]

def word868_4_1198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4757)

def word868_4_1199 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1197 word868_4_1198

def word868_4_1200 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1196 word868_4_1199

def word868_4_1201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 4#64)

def word868_4_1202 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1200 word868_4_1201

def word868_4_1203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4761)]

def word868_4_1204 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1203 word868_4_19

def word868_4_1205 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1202 word868_4_1204

def word868_4_1206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4737 (Flapjack.WordRegImm.reg 4741) word868_4_1205 word868_4_975

def word868_4_1207 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1206 word868_4_29

def word868_4_1208 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1194 word868_4_1207

def word868_4_1209 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1208 word868_4_29

def word868_4_1210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4789 Flapjack.WordStore.heapLength

def word868_4_1211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4793 4789 (Flapjack.WordRegImm.imm 1#64)))

def word868_4_1212 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1210 word868_4_1211

def word868_4_1213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4797 4793

def word868_4_1214 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1212 word868_4_1213

def word868_4_1215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4801 (Flapjack.WordLangAddr.addr 4797 18446744073709551200#64))

def word868_4_1216 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1214 word868_4_1215

def word868_4_1217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4805 (Flapjack.WordLangAddr.addr 4801 48#64))

def word868_4_1218 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1216 word868_4_1217

def word868_4_1219 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1209 word868_4_1218

def word868_4_1220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4809, 4709)]

def word868_4_1221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 200#64))

def word868_4_1222 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1220 word868_4_1221

def word868_4_1223 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1219 word868_4_1222

def word868_4_1224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 116#64)

def word868_4_1225 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_1224

def word868_4_1226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4829, 4825)]

def word868_4_1227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4829)

def word868_4_1228 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1226 word868_4_1227

def word868_4_1229 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1225 word868_4_1228

def word868_4_1230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4833 4#64)

def word868_4_1231 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1229 word868_4_1230

def word868_4_1232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4833)]

def word868_4_1233 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1232 word868_4_19

def word868_4_1234 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1231 word868_4_1233

def word868_4_1235 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4805 (Flapjack.WordRegImm.reg 4813) word868_4_1234 word868_4_975

def word868_4_1236 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1235 word868_4_29

def word868_4_1237 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1223 word868_4_1236

def word868_4_1238 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1237 word868_4_29

def word868_4_1239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4861, 4717)]

def word868_4_1240 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1238 word868_4_1239

def word868_4_1241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4865, 4809)]

def word868_4_1242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4869 (Flapjack.WordLangAddr.addr 4865 224#64))

def word868_4_1243 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1241 word868_4_1242

def word868_4_1244 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1240 word868_4_1243

def word868_4_1245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4877 32#64)

def word868_4_1246 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1244 word868_4_1245

def word868_4_1247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4883, 4705), (4887, 4865), (4891, 4713)]

def word868_4_1248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4861), (4, 4869), (6, 4877)]

def word868_4_1249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4897, 4883), (4901, 4887), (4905, 4891)]

def word868_4_1250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4909, 2)]

def word868_4_1251 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1249 word868_4_1250

def word868_4_1252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4921, 4909)]

def word868_4_1253 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1251 word868_4_1252

def word868_4_1254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4913, 2)]

def word868_4_1255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4913)]

def word868_4_1256 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1255 word868_4_19

def word868_4_1257 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1254 word868_4_1256

def word868_4_1258 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1249 word868_4_1257

def word868_4_1259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 0#64)

def word868_4_1260 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1258 word868_4_1259

def word868_4_1261 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), word868_4_1253, 868, 78)) (some 79) ([2, 4, 6]) (some (2, word868_4_1260, 868, 79))

def word868_4_1262 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1248 word868_4_1261

def word868_4_1263 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1247 word868_4_1262

def word868_4_1264 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1246 word868_4_1263

def word868_4_1265 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1264 word868_4_29

def word868_4_1266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4925, 4921)]

def word868_4_1267 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1265 word868_4_1266

def word868_4_1268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4929 0#64)

def word868_4_1269 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1267 word868_4_1268

def word868_4_1270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4941 117#64)

def word868_4_1271 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_1270

def word868_4_1272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4945, 4941)]

def word868_4_1273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4945)

def word868_4_1274 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1272 word868_4_1273

def word868_4_1275 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1271 word868_4_1274

def word868_4_1276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4949 4#64)

def word868_4_1277 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1275 word868_4_1276

def word868_4_1278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4949)]

def word868_4_1279 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1278 word868_4_19

def word868_4_1280 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1277 word868_4_1279

def word868_4_1281 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4925 (Flapjack.WordRegImm.reg 4929) word868_4_1280 word868_4_975

def word868_4_1282 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1281 word868_4_29

def word868_4_1283 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1269 word868_4_1282

def word868_4_1284 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1283 word868_4_29

def word868_4_1285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4977, 4905)]

def word868_4_1286 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1284 word868_4_1285

def word868_4_1287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4981, 4901)]

def word868_4_1288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4985 (Flapjack.WordLangAddr.addr 4981 232#64))

def word868_4_1289 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1287 word868_4_1288

def word868_4_1290 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1286 word868_4_1289

def word868_4_1291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4993 32#64)

def word868_4_1292 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1290 word868_4_1291

def word868_4_1293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4999, 4897)]

def word868_4_1294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4977), (4, 4985), (6, 4993)]

def word868_4_1295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(5005, 4999)]

def word868_4_1296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(5009, 2)]

def word868_4_1297 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1295 word868_4_1296

def word868_4_1298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(5021, 5009)]

def word868_4_1299 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1297 word868_4_1298

def word868_4_1300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(5013, 2)]

def word868_4_1301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 5013)]

def word868_4_1302 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1301 word868_4_19

def word868_4_1303 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1300 word868_4_1302

def word868_4_1304 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1295 word868_4_1303

def word868_4_1305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5021 0#64)

def word868_4_1306 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1304 word868_4_1305

def word868_4_1307 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))),
  Flapjack.Spt.ln)), word868_4_1299, 868, 80)) (some 79) ([2, 4, 6]) (some (2, word868_4_1306, 868, 81))

def word868_4_1308 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1294 word868_4_1307

def word868_4_1309 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1293 word868_4_1308

def word868_4_1310 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1292 word868_4_1309

def word868_4_1311 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1310 word868_4_29

def word868_4_1312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(5025, 5021)]

def word868_4_1313 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1311 word868_4_1312

def word868_4_1314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5029 0#64)

def word868_4_1315 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1313 word868_4_1314

def word868_4_1316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5041 118#64)

def word868_4_1317 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_29 word868_4_1316

def word868_4_1318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(5045, 5041)]

def word868_4_1319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 5045)

def word868_4_1320 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1318 word868_4_1319

def word868_4_1321 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1317 word868_4_1320

def word868_4_1322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5049 4#64)

def word868_4_1323 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1321 word868_4_1322

def word868_4_1324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 5049)]

def word868_4_1325 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1324 word868_4_19

def word868_4_1326 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1323 word868_4_1325

def word868_4_1327 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 5025 (Flapjack.WordRegImm.reg 5029) word868_4_1326 word868_4_975

def word868_4_1328 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1327 word868_4_29

def word868_4_1329 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1315 word868_4_1328

def word868_4_1330 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1329 word868_4_29

def word868_4_1331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5077 0#64)

def word868_4_1332 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1330 word868_4_1331

def word868_4_1333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 5077)]

def word868_4_1334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 5005 [2]

def word868_4_1335 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1333 word868_4_1334

def word868_4_1336 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_1332 word868_4_1335

def word868_4_1337 : WordLangProgHOL (BitVec 64) :=
.seq word868_4_0 word868_4_1336

def pass868_4 : WordLangProgHOL (BitVec 64) :=
word868_4_1337
theorem pass868_4_eq : WordCse.wordCommonSubexpElim (pass868_3) = pass868_4 := by
  kernel_rfl
#print axioms pass868_4_eq
end InitECandidate.Proofs.WordStages
