import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass868_2
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word868_3_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(61, 0), (65, 2), (69, 4)]

def word868_3_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 65)]

def word868_3_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 77 (Flapjack.WordLangAddr.addr 73 0#64))

def word868_3_3 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1 word868_3_2

def word868_3_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(81, 77)]

def word868_3_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 85 (Flapjack.WordLangAddr.addr 81 40#64))

def word868_3_6 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_4 word868_3_5

def word868_3_7 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_3 word868_3_6

def word868_3_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 93 88#64)

def word868_3_9 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_7 word868_3_8

def word868_3_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(99, 61), (103, 69), (107, 85), (111, 73), (115, 81)]

def word868_3_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 93)]

def word868_3_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(121, 99), (125, 103), (129, 107), (133, 111), (137, 115)]

def word868_3_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(141, 2)]

def word868_3_14 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_12 word868_3_13

def word868_3_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(149, 141)]

def word868_3_16 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_14 word868_3_15

def word868_3_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(145, 2)]

def word868_3_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 145)]

def word868_3_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def word868_3_20 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_18 word868_3_19

def word868_3_21 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_17 word868_3_20

def word868_3_22 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_12 word868_3_21

def word868_3_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 149 0#64)

def word868_3_24 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_22 word868_3_23

def word868_3_25 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_16, 868, 2)) (some 68) ([2]) (some (2, word868_3_24, 868, 3))

def word868_3_26 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_11 word868_3_25

def word868_3_27 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_10 word868_3_26

def word868_3_28 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_9 word868_3_27

def word868_3_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word868_3_30 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_28 word868_3_29

def word868_3_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 157 Flapjack.WordStore.heapLength

def word868_3_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 161 157 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_33 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_31 word868_3_32

def word868_3_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 165 161

def word868_3_35 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_33 word868_3_34

def word868_3_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 169 165 (Flapjack.WordRegImm.imm 18446744073709551200#64)))

def word868_3_37 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_35 word868_3_36

def word868_3_38 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_30 word868_3_37

def word868_3_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(173, 149)]

def word868_3_40 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_38 word868_3_39

def word868_3_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(177, 173)]

def word868_3_42 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_40 word868_3_41

def word868_3_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(181, 169)]

def word868_3_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 177 (Flapjack.WordLangAddr.addr 181 0#64))

def word868_3_45 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_43 word868_3_44

def word868_3_46 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_42 word868_3_45

def word868_3_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 185 Flapjack.WordStore.heapLength

def word868_3_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 189 185 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_49 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_47 word868_3_48

def word868_3_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 193 189

def word868_3_51 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_49 word868_3_50

def word868_3_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 197 (Flapjack.WordLangAddr.addr 193 18446744073709551200#64))

def word868_3_53 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_51 word868_3_52

def word868_3_54 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_46 word868_3_53

def word868_3_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 205 88#64)

def word868_3_56 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_54 word868_3_55

def word868_3_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(211, 121), (215, 125), (219, 129), (223, 133), (227, 137)]

def word868_3_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 197), (4, 205)]

def word868_3_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(233, 211), (237, 215), (241, 219), (245, 223), (249, 227)]

def word868_3_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(257, 2)]

def word868_3_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 257)]

def word868_3_62 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_61 word868_3_19

def word868_3_63 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_60 word868_3_62

def word868_3_64 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_59 word868_3_63

def word868_3_65 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_59, 868, 4)) (some 78) ([2, 4]) (some (2, word868_3_64, 868, 5))

def word868_3_66 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_58 word868_3_65

def word868_3_67 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_57 word868_3_66

def word868_3_68 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_56 word868_3_67

def word868_3_69 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_68 word868_3_29

def word868_3_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(269, 241)]

def word868_3_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 273 269 (Flapjack.WordRegImm.imm 4#64)))

def word868_3_72 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_70 word868_3_71

def word868_3_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 277 273 (Flapjack.WordRegImm.imm 16#64)))

def word868_3_74 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_72 word868_3_73

def word868_3_75 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_69 word868_3_74

def word868_3_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(283, 233), (287, 237), (291, 269), (295, 245), (299, 249)]

def word868_3_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 277)]

def word868_3_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(305, 283), (309, 287), (313, 291), (317, 295), (321, 299)]

def word868_3_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(325, 2)]

def word868_3_80 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_78 word868_3_79

def word868_3_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(333, 325)]

def word868_3_82 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_80 word868_3_81

def word868_3_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(329, 2)]

def word868_3_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 329)]

def word868_3_85 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_84 word868_3_19

def word868_3_86 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_83 word868_3_85

def word868_3_87 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_78 word868_3_86

def word868_3_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 333 0#64)

def word868_3_89 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_87 word868_3_88

def word868_3_90 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_82, 868, 6)) (some 68) ([2]) (some (2, word868_3_89, 868, 7))

def word868_3_91 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_77 word868_3_90

def word868_3_92 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_76 word868_3_91

def word868_3_93 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_75 word868_3_92

def word868_3_94 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_93 word868_3_29

def word868_3_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 341 Flapjack.WordStore.heapLength

def word868_3_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 345 341 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_97 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_95 word868_3_96

def word868_3_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 349 345

def word868_3_99 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_97 word868_3_98

def word868_3_100 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 353 (Flapjack.WordLangAddr.addr 349 18446744073709551200#64))

def word868_3_101 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_99 word868_3_100

def word868_3_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 357 353 (Flapjack.WordRegImm.imm 24#64)))

def word868_3_103 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_101 word868_3_102

def word868_3_104 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_94 word868_3_103

def word868_3_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(361, 333)]

def word868_3_106 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_104 word868_3_105

def word868_3_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(365, 361)]

def word868_3_108 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_106 word868_3_107

def word868_3_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(369, 357)]

def word868_3_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 365 (Flapjack.WordLangAddr.addr 369 0#64))

def word868_3_111 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_109 word868_3_110

def word868_3_112 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_108 word868_3_111

def word868_3_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(373, 313)]

def word868_3_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 377 373 (Flapjack.WordRegImm.imm 4#64)))

def word868_3_115 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_113 word868_3_114

def word868_3_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 381 377 (Flapjack.WordRegImm.imm 16#64)))

def word868_3_117 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_115 word868_3_116

def word868_3_118 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_112 word868_3_117

def word868_3_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(387, 305), (391, 309), (395, 361), (399, 373), (403, 317), (407, 321)]

def word868_3_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 381)]

def word868_3_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(413, 387), (417, 391), (421, 395), (425, 399), (429, 403), (433, 407)]

def word868_3_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(437, 2)]

def word868_3_123 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_121 word868_3_122

def word868_3_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(449, 437)]

def word868_3_125 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_123 word868_3_124

def word868_3_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(441, 2)]

def word868_3_127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 441)]

def word868_3_128 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_127 word868_3_19

def word868_3_129 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_126 word868_3_128

def word868_3_130 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_121 word868_3_129

def word868_3_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 0#64)

def word868_3_132 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_130 word868_3_131

def word868_3_133 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_125, 868, 8)) (some 68) ([2]) (some (2, word868_3_132, 868, 9))

def word868_3_134 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_120 word868_3_133

def word868_3_135 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_119 word868_3_134

def word868_3_136 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_118 word868_3_135

def word868_3_137 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_136 word868_3_29

def word868_3_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 453 Flapjack.WordStore.heapLength

def word868_3_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 457 453 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_140 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_138 word868_3_139

def word868_3_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 461 457

def word868_3_142 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_140 word868_3_141

def word868_3_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 465 (Flapjack.WordLangAddr.addr 461 18446744073709551200#64))

def word868_3_144 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_142 word868_3_143

def word868_3_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 469 465 (Flapjack.WordRegImm.imm 32#64)))

def word868_3_146 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_144 word868_3_145

def word868_3_147 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_137 word868_3_146

def word868_3_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(473, 449)]

def word868_3_149 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_147 word868_3_148

def word868_3_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(477, 473)]

def word868_3_151 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_149 word868_3_150

def word868_3_152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(481, 469)]

def word868_3_153 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 477 (Flapjack.WordLangAddr.addr 481 0#64))

def word868_3_154 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_152 word868_3_153

def word868_3_155 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_151 word868_3_154

def word868_3_156 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 16#64)

def word868_3_157 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_155 word868_3_156

def word868_3_158 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 8#64)

def word868_3_159 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_157 word868_3_158

def word868_3_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(503, 413), (507, 473), (511, 417), (515, 421), (519, 425), (523, 429), (527, 433)]

def word868_3_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 497), (4, 493)]

def word868_3_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(533, 503), (537, 507), (541, 511), (545, 515), (549, 519), (553, 523), (557, 527)]

def word868_3_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(561, 2)]

def word868_3_164 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_162 word868_3_163

def word868_3_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(569, 561)]

def word868_3_166 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_164 word868_3_165

def word868_3_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(565, 2)]

def word868_3_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 565)]

def word868_3_169 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_168 word868_3_19

def word868_3_170 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_167 word868_3_169

def word868_3_171 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_162 word868_3_170

def word868_3_172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 0#64)

def word868_3_173 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_171 word868_3_172

def word868_3_174 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_166, 868, 10)) (some 435) ([2, 4]) (some (2, word868_3_173, 868, 11))

def word868_3_175 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_161 word868_3_174

def word868_3_176 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_160 word868_3_175

def word868_3_177 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_159 word868_3_176

def word868_3_178 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_177 word868_3_29

def word868_3_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 577 Flapjack.WordStore.heapLength

def word868_3_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 581 577 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_181 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_179 word868_3_180

def word868_3_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 585 581

def word868_3_183 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_181 word868_3_182

def word868_3_184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 589 (Flapjack.WordLangAddr.addr 585 18446744073709551200#64))

def word868_3_185 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_183 word868_3_184

def word868_3_186 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 593 589 (Flapjack.WordRegImm.imm 40#64)))

def word868_3_187 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_185 word868_3_186

def word868_3_188 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_178 word868_3_187

def word868_3_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(597, 569)]

def word868_3_190 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_188 word868_3_189

def word868_3_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(601, 597)]

def word868_3_192 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_190 word868_3_191

def word868_3_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(605, 593)]

def word868_3_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 601 (Flapjack.WordLangAddr.addr 605 0#64))

def word868_3_195 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_193 word868_3_194

def word868_3_196 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_192 word868_3_195

def word868_3_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 613 128#64)

def word868_3_198 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_196 word868_3_197

def word868_3_199 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(619, 533), (623, 537), (627, 541), (631, 545), (635, 549), (639, 553), (643, 597), (647, 557)]

def word868_3_200 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 613)]

def word868_3_201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(653, 619), (657, 623), (661, 627), (665, 631), (669, 635), (673, 639), (677, 643), (681, 647)]

def word868_3_202 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(685, 2)]

def word868_3_203 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_201 word868_3_202

def word868_3_204 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(693, 685)]

def word868_3_205 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_203 word868_3_204

def word868_3_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(689, 2)]

def word868_3_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 689)]

def word868_3_208 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_207 word868_3_19

def word868_3_209 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_206 word868_3_208

def word868_3_210 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_201 word868_3_209

def word868_3_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 693 0#64)

def word868_3_212 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_210 word868_3_211

def word868_3_213 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_205, 868, 12)) (some 68) ([2]) (some (2, word868_3_212, 868, 13))

def word868_3_214 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_200 word868_3_213

def word868_3_215 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_199 word868_3_214

def word868_3_216 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_198 word868_3_215

def word868_3_217 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_216 word868_3_29

def word868_3_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 701 Flapjack.WordStore.heapLength

def word868_3_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 705 701 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_220 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_218 word868_3_219

def word868_3_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 709 705

def word868_3_222 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_220 word868_3_221

def word868_3_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 713 (Flapjack.WordLangAddr.addr 709 18446744073709551200#64))

def word868_3_224 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_222 word868_3_223

def word868_3_225 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 717 713 (Flapjack.WordRegImm.imm 56#64)))

def word868_3_226 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_224 word868_3_225

def word868_3_227 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_217 word868_3_226

def word868_3_228 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(721, 693)]

def word868_3_229 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_227 word868_3_228

def word868_3_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(725, 721)]

def word868_3_231 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_229 word868_3_230

def word868_3_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(729, 717)]

def word868_3_233 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 725 (Flapjack.WordLangAddr.addr 729 0#64))

def word868_3_234 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_232 word868_3_233

def word868_3_235 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_231 word868_3_234

def word868_3_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 741 16#64)

def word868_3_237 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_235 word868_3_236

def word868_3_238 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 745 8#64)

def word868_3_239 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_237 word868_3_238

def word868_3_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(751, 653), (755, 721), (759, 657), (763, 661), (767, 665), (771, 669), (775, 673), (779, 677), (783, 681)]

def word868_3_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 745), (4, 741)]

def word868_3_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(789, 751), (793, 755), (797, 759), (801, 763), (805, 767), (809, 771), (813, 775), (817, 779), (821, 783)]

def word868_3_243 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(825, 2)]

def word868_3_244 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_242 word868_3_243

def word868_3_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(837, 825)]

def word868_3_246 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_244 word868_3_245

def word868_3_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(829, 2)]

def word868_3_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 829)]

def word868_3_249 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_248 word868_3_19

def word868_3_250 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_247 word868_3_249

def word868_3_251 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_242 word868_3_250

def word868_3_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 837 0#64)

def word868_3_253 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_251 word868_3_252

def word868_3_254 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_246, 868, 14)) (some 435) ([2, 4]) (some (2, word868_3_253, 868, 15))

def word868_3_255 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_241 word868_3_254

def word868_3_256 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_240 word868_3_255

def word868_3_257 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_239 word868_3_256

def word868_3_258 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_257 word868_3_29

def word868_3_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 841 Flapjack.WordStore.heapLength

def word868_3_260 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 845 841 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_261 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_259 word868_3_260

def word868_3_262 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 849 845

def word868_3_263 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_261 word868_3_262

def word868_3_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 853 (Flapjack.WordLangAddr.addr 849 18446744073709551200#64))

def word868_3_265 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_263 word868_3_264

def word868_3_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 857 853 (Flapjack.WordRegImm.imm 72#64)))

def word868_3_267 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_265 word868_3_266

def word868_3_268 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_258 word868_3_267

def word868_3_269 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(861, 837)]

def word868_3_270 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_268 word868_3_269

def word868_3_271 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(865, 861)]

def word868_3_272 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_270 word868_3_271

def word868_3_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(869, 857)]

def word868_3_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 865 (Flapjack.WordLangAddr.addr 869 0#64))

def word868_3_275 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_273 word868_3_274

def word868_3_276 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_272 word868_3_275

def word868_3_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 873 Flapjack.WordStore.heapLength

def word868_3_278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 877 873 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_279 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_277 word868_3_278

def word868_3_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 881 877

def word868_3_281 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_279 word868_3_280

def word868_3_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 885 (Flapjack.WordLangAddr.addr 881 18446744073709551200#64))

def word868_3_283 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_281 word868_3_282

def word868_3_284 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 889 885 (Flapjack.WordRegImm.imm 80#64)))

def word868_3_285 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_283 word868_3_284

def word868_3_286 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_276 word868_3_285

def word868_3_287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(893, 809)]

def word868_3_288 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_286 word868_3_287

def word868_3_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(897, 893)]

def word868_3_290 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_288 word868_3_289

def word868_3_291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(901, 889)]

def word868_3_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 897 (Flapjack.WordLangAddr.addr 901 0#64))

def word868_3_293 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_291 word868_3_292

def word868_3_294 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_290 word868_3_293

def word868_3_295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(907, 789), (911, 861), (915, 793), (919, 797), (923, 801), (927, 805), (931, 893), (935, 813), (939, 817),
    (943, 821)]

def word868_3_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(949, 907), (953, 911), (957, 915), (961, 919), (965, 923), (969, 927), (973, 931), (977, 935), (981, 939),
    (985, 943)]

def word868_3_297 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(993, 2)]

def word868_3_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 993)]

def word868_3_299 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_298 word868_3_19

def word868_3_300 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_297 word868_3_299

def word868_3_301 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_296 word868_3_300

def word868_3_302 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_296, 868, 16)) (some 438) ([]) (some (2, word868_3_301, 868, 17))

def word868_3_303 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_295 word868_3_302

def word868_3_304 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_294 word868_3_303

def word868_3_305 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_304 word868_3_29

def word868_3_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1005 Flapjack.WordStore.heapLength

def word868_3_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1009 1005 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_308 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_306 word868_3_307

def word868_3_309 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1013 1009

def word868_3_310 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_308 word868_3_309

def word868_3_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1017 (Flapjack.WordLangAddr.addr 1013 18446744073709551152#64))

def word868_3_312 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_310 word868_3_311

def word868_3_313 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_305 word868_3_312

def word868_3_314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1021, 977)]

def word868_3_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1025 (Flapjack.WordLangAddr.addr 1021 24#64))

def word868_3_316 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_314 word868_3_315

def word868_3_317 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_313 word868_3_316

def word868_3_318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1033 32#64)

def word868_3_319 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_317 word868_3_318

def word868_3_320 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1039, 949), (1043, 953), (1047, 957), (1051, 961), (1055, 965), (1059, 969), (1063, 973), (1067, 1021), (1071, 981),
    (1075, 985)]

def word868_3_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1017), (4, 1025), (6, 1033)]

def word868_3_322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1081, 1039), (1085, 1043), (1089, 1047), (1093, 1051), (1097, 1055), (1101, 1059), (1105, 1063), (1109, 1067),
    (1113, 1071), (1117, 1075)]

def word868_3_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1125, 2)]

def word868_3_324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1125)]

def word868_3_325 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_324 word868_3_19

def word868_3_326 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_323 word868_3_325

def word868_3_327 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_322 word868_3_326

def word868_3_328 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_322, 868, 18)) (some 860) ([2, 4, 6]) (some (2, word868_3_327, 868, 19))

def word868_3_329 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_321 word868_3_328

def word868_3_330 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_320 word868_3_329

def word868_3_331 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_319 word868_3_330

def word868_3_332 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_331 word868_3_29

def word868_3_333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1137 Flapjack.WordStore.heapLength

def word868_3_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1141 1137 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_335 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_333 word868_3_334

def word868_3_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1145 1141

def word868_3_337 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_335 word868_3_336

def word868_3_338 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1149 (Flapjack.WordLangAddr.addr 1145 18446744073709551184#64))

def word868_3_339 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_337 word868_3_338

def word868_3_340 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_332 word868_3_339

def word868_3_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1153 0#64)

def word868_3_342 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_340 word868_3_341

def word868_3_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1157 Flapjack.WordStore.heapLength

def word868_3_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1161 1157 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_345 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_343 word868_3_344

def word868_3_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1165 1161

def word868_3_347 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_345 word868_3_346

def word868_3_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1169 (Flapjack.WordLangAddr.addr 1165 18446744073709551168#64))

def word868_3_349 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_347 word868_3_348

def word868_3_350 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_342 word868_3_349

def word868_3_351 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1181 Flapjack.WordStore.heapLength

def word868_3_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1185 1181 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_353 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_351 word868_3_352

def word868_3_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1189 1185

def word868_3_355 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_353 word868_3_354

def word868_3_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1193 (Flapjack.WordLangAddr.addr 1189 18446744073709551168#64))

def word868_3_357 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_355 word868_3_356

def word868_3_358 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1197 1193 (Flapjack.WordRegImm.imm 18446744073709551615#64)))

def word868_3_359 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_357 word868_3_358

def word868_3_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1201 1197 (Flapjack.WordRegImm.imm 5#64)))

def word868_3_361 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_359 word868_3_360

def word868_3_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1205 Flapjack.WordStore.heapLength

def word868_3_363 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1209 1205 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_364 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_362 word868_3_363

def word868_3_365 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1213 1209

def word868_3_366 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_364 word868_3_365

def word868_3_367 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1217 (Flapjack.WordLangAddr.addr 1213 18446744073709551176#64))

def word868_3_368 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_366 word868_3_367

def word868_3_369 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1221 1201 (Flapjack.WordRegImm.reg 1217)))

def word868_3_370 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_368 word868_3_369

def word868_3_371 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_361 word868_3_370

def word868_3_372 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_371

def word868_3_373 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1237, 1221)]

def word868_3_374 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_372 word868_3_373

def word868_3_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1237, 1149)]

def word868_3_376 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_375

def word868_3_377 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 1153 (Flapjack.WordRegImm.reg 1169) word868_3_374 word868_3_376

def word868_3_378 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_350 word868_3_377

def word868_3_379 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_378 word868_3_29

def word868_3_380 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 1253 Flapjack.WordStore.heapLength

def word868_3_381 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1257 1253 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_382 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_380 word868_3_381

def word868_3_383 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 1261 1257

def word868_3_384 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_382 word868_3_383

def word868_3_385 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1265 (Flapjack.WordLangAddr.addr 1261 18446744073709551144#64))

def word868_3_386 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_384 word868_3_385

def word868_3_387 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_379 word868_3_386

def word868_3_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1269, 1237)]

def word868_3_389 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_387 word868_3_388

def word868_3_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1277 32#64)

def word868_3_391 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_389 word868_3_390

def word868_3_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1283, 1081), (1287, 1085), (1291, 1089), (1295, 1093), (1299, 1097), (1303, 1101), (1307, 1269), (1311, 1105),
    (1315, 1109), (1319, 1113), (1323, 1117)]

def word868_3_393 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1265), (4, 1269), (6, 1277)]

def word868_3_394 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1329, 1283), (1333, 1287), (1337, 1291), (1341, 1295), (1345, 1299), (1349, 1303), (1353, 1307), (1357, 1311),
    (1361, 1315), (1365, 1319), (1369, 1323)]

def word868_3_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1377, 2)]

def word868_3_396 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1377)]

def word868_3_397 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_396 word868_3_19

def word868_3_398 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_395 word868_3_397

def word868_3_399 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_394 word868_3_398

def word868_3_400 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_394, 868, 20)) (some 860) ([2, 4, 6]) (some (2, word868_3_399, 868, 21))

def word868_3_401 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_393 word868_3_400

def word868_3_402 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_392 word868_3_401

def word868_3_403 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_391 word868_3_402

def word868_3_404 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_403 word868_3_29

def word868_3_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1391, 1329), (1395, 1333), (1399, 1337), (1403, 1341), (1407, 1345), (1411, 1349), (1415, 1353), (1419, 1357),
    (1423, 1361), (1427, 1365), (1431, 1369)]

def word868_3_406 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1437, 1391), (1441, 1395), (1445, 1399), (1449, 1403), (1453, 1407), (1457, 1411), (1461, 1415), (1465, 1419),
    (1469, 1423), (1473, 1427), (1477, 1431)]

def word868_3_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1485, 2)]

def word868_3_408 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1485)]

def word868_3_409 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_408 word868_3_19

def word868_3_410 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_407 word868_3_409

def word868_3_411 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_406 word868_3_410

def word868_3_412 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_406, 868, 22)) (some 387) ([]) (some (2, word868_3_411, 868, 23))

def word868_3_413 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_405 word868_3_412

def word868_3_414 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_404 word868_3_413

def word868_3_415 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_414 word868_3_29

def word868_3_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1501 1#64)

def word868_3_417 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_415 word868_3_416

def word868_3_418 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1507, 1437), (1511, 1441), (1515, 1445), (1519, 1449), (1523, 1453), (1527, 1457), (1531, 1461), (1535, 1465),
    (1539, 1469), (1543, 1473), (1547, 1477)]

def word868_3_419 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1501)]

def word868_3_420 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1553, 1507), (1557, 1511), (1561, 1515), (1565, 1519), (1569, 1523), (1573, 1527), (1577, 1531), (1581, 1535),
    (1585, 1539), (1589, 1543), (1593, 1547)]

def word868_3_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1601, 2)]

def word868_3_422 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1601)]

def word868_3_423 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_422 word868_3_19

def word868_3_424 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_421 word868_3_423

def word868_3_425 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_420 word868_3_424

def word868_3_426 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_420, 868, 24)) (some 434) ([2]) (some (2, word868_3_425, 868, 25))

def word868_3_427 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_419 word868_3_426

def word868_3_428 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_418 word868_3_427

def word868_3_429 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_417 word868_3_428

def word868_3_430 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_429 word868_3_29

def word868_3_431 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1613, 1593)]

def word868_3_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1617 (Flapjack.WordLangAddr.addr 1613 32#64))

def word868_3_433 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_431 word868_3_432

def word868_3_434 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_430 word868_3_433

def word868_3_435 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1621 0#64)

def word868_3_436 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_434 word868_3_435

def word868_3_437 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_436 word868_3_29

def word868_3_438 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1625, 1553), (1629, 1557), (1633, 1621), (1637, 1561), (1641, 1565), (1645, 1569), (1649, 1573), (1653, 1577),
    (1657, 1581), (1661, 1585), (1665, 1589), (1669, 1613), (1673, 1617)]

def word868_3_439 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1677, 1633)]

def word868_3_440 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1681, 1657)]

def word868_3_441 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_439 word868_3_440

def word868_3_442 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1693, 1677)]

def word868_3_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1697 1693 (Flapjack.WordRegImm.imm 4#64)))

def word868_3_444 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_442 word868_3_443

def word868_3_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1701, 1673)]

def word868_3_446 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1705 1697 (Flapjack.WordRegImm.reg 1701)))

def word868_3_447 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_445 word868_3_446

def word868_3_448 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_444 word868_3_447

def word868_3_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1709 (Flapjack.WordLangAddr.addr 1705 0#64))

def word868_3_450 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_448 word868_3_449

def word868_3_451 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_450

def word868_3_452 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1713, 1693)]

def word868_3_453 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1717 1713 (Flapjack.WordRegImm.imm 4#64)))

def word868_3_454 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_452 word868_3_453

def word868_3_455 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1721, 1701)]

def word868_3_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1725 1717 (Flapjack.WordRegImm.reg 1721)))

def word868_3_457 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_455 word868_3_456

def word868_3_458 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_454 word868_3_457

def word868_3_459 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 1729 (Flapjack.WordLangAddr.addr 1725 8#64))

def word868_3_460 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_458 word868_3_459

def word868_3_461 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_451 word868_3_460

def word868_3_462 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1735, 1625), (1739, 1629), (1743, 1713), (1747, 1637), (1751, 1641), (1755, 1645), (1759, 1649), (1763, 1653),
    (1767, 1681), (1771, 1661), (1775, 1665), (1779, 1669), (1783, 1721)]

def word868_3_463 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1709), (4, 1729)]

def word868_3_464 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1789, 1735), (1793, 1739), (1797, 1743), (1801, 1747), (1805, 1751), (1809, 1755), (1813, 1759), (1817, 1763),
    (1821, 1767), (1825, 1771), (1829, 1775), (1833, 1779), (1837, 1783)]

def word868_3_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1841, 2)]

def word868_3_466 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_464 word868_3_465

def word868_3_467 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1853, 1841)]

def word868_3_468 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_466 word868_3_467

def word868_3_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1845, 2)]

def word868_3_470 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1845)]

def word868_3_471 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_470 word868_3_19

def word868_3_472 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_469 word868_3_471

def word868_3_473 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_464 word868_3_472

def word868_3_474 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1853 0#64)

def word868_3_475 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_473 word868_3_474

def word868_3_476 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_468, 868, 26)) (some 346) ([2, 4]) (some (2, word868_3_475, 868, 27))

def word868_3_477 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_463 word868_3_476

def word868_3_478 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_462 word868_3_477

def word868_3_479 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_461 word868_3_478

def word868_3_480 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_479 word868_3_29

def word868_3_481 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1857, 1853)]

def word868_3_482 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_480 word868_3_481

def word868_3_483 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1861, 1797)]

def word868_3_484 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_482 word868_3_483

def word868_3_485 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1867, 1789), (1871, 1793), (1875, 1861), (1879, 1801), (1883, 1805), (1887, 1809), (1891, 1813), (1895, 1817),
    (1899, 1821), (1903, 1825), (1907, 1829), (1911, 1833), (1915, 1837)]

def word868_3_486 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1857), (4, 1861)]

def word868_3_487 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(1921, 1867), (1925, 1871), (1929, 1875), (1933, 1879), (1937, 1883), (1941, 1887), (1945, 1891), (1949, 1895),
    (1953, 1899), (1957, 1903), (1961, 1907), (1965, 1911), (1969, 1915)]

def word868_3_488 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1977, 2)]

def word868_3_489 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 1977)]

def word868_3_490 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_489 word868_3_19

def word868_3_491 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_488 word868_3_490

def word868_3_492 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_487 word868_3_491

def word868_3_493 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_487, 868, 28)) (some 863) ([2, 4]) (some (2, word868_3_492, 868, 29))

def word868_3_494 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_486 word868_3_493

def word868_3_495 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_485 word868_3_494

def word868_3_496 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_484 word868_3_495

def word868_3_497 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_496 word868_3_29

def word868_3_498 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1989, 1929)]

def word868_3_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 1993 1989 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_500 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_498 word868_3_499

def word868_3_501 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_497 word868_3_500

def word868_3_502 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(1997, 1993)]

def word868_3_503 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_501 word868_3_502

def word868_3_504 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1625, 1921), (1629, 1925), (1633, 1997), (1637, 1933), (1641, 1937), (1645, 1941), (1649, 1945), (1653, 1949),
    (1657, 1953), (1661, 1957), (1665, 1961), (1669, 1965), (1673, 1969)]

def word868_3_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word868_3_506 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_504 word868_3_505

def word868_3_507 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_503 word868_3_506

def word868_3_508 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2065, 1921), (2061, 1925), (2057, 1997), (2053, 1933), (2049, 1937), (2045, 1941), (2041, 1945), (2037, 1949),
    (2033, 1953), (2025, 1957), (2021, 1961), (2017, 1965), (2009, 1969)]

def word868_3_509 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_507 word868_3_508

def word868_3_510 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(1657, 1681)]

def word868_3_511 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word868_3_512 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_510 word868_3_511

def word868_3_513 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_512

def word868_3_514 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2065, 1625), (2061, 1629), (2057, 1677), (2053, 1637), (2049, 1641), (2045, 1645), (2041, 1649), (2037, 1653),
    (2033, 1681), (2025, 1661), (2021, 1665), (2017, 1669), (2009, 1673)]

def word868_3_515 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_513 word868_3_514

def word868_3_516 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 1677 (Flapjack.WordRegImm.reg 1681) word868_3_509 word868_3_515

def word868_3_517 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_441 word868_3_516

def word868_3_518 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_517 word868_3_29

def word868_3_519 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(1625, 2065), (1629, 2061), (1633, 2057), (1637, 2053), (1641, 2049), (1645, 2045), (1649, 2041), (1653, 2037),
    (1657, 2033), (1661, 2025), (1665, 2021), (1669, 2017), (1673, 2009)]

def word868_3_520 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_518 word868_3_519

def word868_3_521 : WordLangProgHOL (BitVec 64) :=
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
    Flapjack.Spt.ln)) word868_3_520 (Flapjack.Spt.bn Flapjack.Spt.ln
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

def word868_3_522 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_438 word868_3_521

def word868_3_523 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_437 word868_3_522

def word868_3_524 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_523 word868_3_29

def word868_3_525 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2077 Flapjack.WordStore.heapLength

def word868_3_526 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2081 2077 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_527 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_525 word868_3_526

def word868_3_528 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2085 2081

def word868_3_529 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_527 word868_3_528

def word868_3_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2089 2085 (Flapjack.WordRegImm.imm 18446744073709551392#64)))

def word868_3_531 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_529 word868_3_530

def word868_3_532 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_524 word868_3_531

def word868_3_533 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2093, 1657)]

def word868_3_534 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2097 2093 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_535 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_533 word868_3_534

def word868_3_536 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_532 word868_3_535

def word868_3_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2101, 2097)]

def word868_3_538 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_536 word868_3_537

def word868_3_539 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2105, 2089)]

def word868_3_540 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 2101 (Flapjack.WordLangAddr.addr 2105 0#64))

def word868_3_541 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_539 word868_3_540

def word868_3_542 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_538 word868_3_541

def word868_3_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2109, 1669)]

def word868_3_544 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_542 word868_3_543

def word868_3_545 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2115, 1625), (2119, 1641), (2123, 1645), (2127, 1649), (2131, 2093), (2135, 2109)]

def word868_3_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2109)]

def word868_3_547 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2141, 2115), (2145, 2119), (2149, 2123), (2153, 2127), (2157, 2131), (2161, 2135)]

def word868_3_548 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2169, 2)]

def word868_3_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2169)]

def word868_3_550 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_549 word868_3_19

def word868_3_551 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_548 word868_3_550

def word868_3_552 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_547 word868_3_551

def word868_3_553 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_547, 868, 30)) (some 865) ([2]) (some (2, word868_3_552, 868, 31))

def word868_3_554 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_546 word868_3_553

def word868_3_555 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_545 word868_3_554

def word868_3_556 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_544 word868_3_555

def word868_3_557 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_556 word868_3_29

def word868_3_558 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2183, 2141), (2187, 2145), (2191, 2149), (2195, 2153), (2199, 2157), (2203, 2161)]

def word868_3_559 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2209, 2183), (2213, 2187), (2217, 2191), (2221, 2195), (2225, 2199), (2229, 2203)]

def word868_3_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2237, 2)]

def word868_3_561 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2237)]

def word868_3_562 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_561 word868_3_19

def word868_3_563 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_560 word868_3_562

def word868_3_564 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_559 word868_3_563

def word868_3_565 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_559, 868, 32)) (some 867) ([]) (some (2, word868_3_564, 868, 33))

def word868_3_566 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_558 word868_3_565

def word868_3_567 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_557 word868_3_566

def word868_3_568 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_567 word868_3_29

def word868_3_569 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2251, 2209), (2255, 2213), (2259, 2217), (2263, 2221), (2267, 2225), (2271, 2229)]

def word868_3_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2277, 2251), (2281, 2255), (2285, 2259), (2289, 2263), (2293, 2267), (2297, 2271)]

def word868_3_571 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2301, 2), (2305, 4)]

def word868_3_572 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_570 word868_3_571

def word868_3_573 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2317, 2305)]

def word868_3_574 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2321, 2301)]

def word868_3_575 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_573 word868_3_574

def word868_3_576 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_572 word868_3_575

def word868_3_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2309, 2)]

def word868_3_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2309)]

def word868_3_579 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_578 word868_3_19

def word868_3_580 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_577 word868_3_579

def word868_3_581 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_570 word868_3_580

def word868_3_582 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2317 0#64)

def word868_3_583 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2321 0#64)

def word868_3_584 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_582 word868_3_583

def word868_3_585 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_581 word868_3_584

def word868_3_586 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_576, 868, 34)) (some 460) ([]) (some (2, word868_3_585, 868, 35))

def word868_3_587 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_569 word868_3_586

def word868_3_588 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_568 word868_3_587

def word868_3_589 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_588 word868_3_29

def word868_3_590 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 2325 Flapjack.WordStore.heapLength

def word868_3_591 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 2329 2325 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_592 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_590 word868_3_591

def word868_3_593 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 2333 2329

def word868_3_594 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_592 word868_3_593

def word868_3_595 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2337 (Flapjack.WordLangAddr.addr 2333 18446744073709551208#64))

def word868_3_596 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_594 word868_3_595

def word868_3_597 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2341 (Flapjack.WordLangAddr.addr 2337 8#64))

def word868_3_598 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_596 word868_3_597

def word868_3_599 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_589 word868_3_598

def word868_3_600 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2347, 2277), (2351, 2321), (2355, 2281), (2359, 2285), (2363, 2289), (2367, 2293), (2371, 2317), (2375, 2297)]

def word868_3_601 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2341)]

def word868_3_602 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2381, 2347), (2385, 2351), (2389, 2355), (2393, 2359), (2397, 2363), (2401, 2367), (2405, 2371), (2409, 2375)]

def word868_3_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2417, 2)]

def word868_3_604 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2417)]

def word868_3_605 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_604 word868_3_19

def word868_3_606 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_603 word868_3_605

def word868_3_607 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_602 word868_3_606

def word868_3_608 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_602, 868, 36)) (some 461) ([2]) (some (2, word868_3_607, 868, 37))

def word868_3_609 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_601 word868_3_608

def word868_3_610 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_600 word868_3_609

def word868_3_611 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_599 word868_3_610

def word868_3_612 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_611 word868_3_29

def word868_3_613 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2433 32#64)

def word868_3_614 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_612 word868_3_613

def word868_3_615 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2439, 2381), (2443, 2385), (2447, 2389), (2451, 2393), (2455, 2397), (2459, 2401), (2463, 2405), (2467, 2409)]

def word868_3_616 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2433)]

def word868_3_617 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2473, 2439), (2477, 2443), (2481, 2447), (2485, 2451), (2489, 2455), (2493, 2459), (2497, 2463), (2501, 2467)]

def word868_3_618 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2505, 2)]

def word868_3_619 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_617 word868_3_618

def word868_3_620 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2513, 2505)]

def word868_3_621 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_619 word868_3_620

def word868_3_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2509, 2)]

def word868_3_623 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2509)]

def word868_3_624 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_623 word868_3_19

def word868_3_625 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_622 word868_3_624

def word868_3_626 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_617 word868_3_625

def word868_3_627 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2513 0#64)

def word868_3_628 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_626 word868_3_627

def word868_3_629 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_621, 868, 38)) (some 68) ([2]) (some (2, word868_3_628, 868, 39))

def word868_3_630 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_616 word868_3_629

def word868_3_631 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_615 word868_3_630

def word868_3_632 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_614 word868_3_631

def word868_3_633 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_632 word868_3_29

def word868_3_634 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2521, 2513)]

def word868_3_635 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_633 word868_3_634

def word868_3_636 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2527, 2473), (2531, 2477), (2535, 2481), (2539, 2485), (2543, 2489), (2547, 2493), (2551, 2497), (2555, 2501),
    (2559, 2521)]

def word868_3_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2521)]

def word868_3_638 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2565, 2527), (2569, 2531), (2573, 2535), (2577, 2539), (2581, 2543), (2585, 2547), (2589, 2551), (2593, 2555),
    (2597, 2559)]

def word868_3_639 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2605, 2)]

def word868_3_640 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2605)]

def word868_3_641 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_640 word868_3_19

def word868_3_642 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_639 word868_3_641

def word868_3_643 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_638 word868_3_642

def word868_3_644 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_638, 868, 40)) (some 850) ([2]) (some (2, word868_3_643, 868, 41))

def word868_3_645 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_637 word868_3_644

def word868_3_646 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_636 word868_3_645

def word868_3_647 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_635 word868_3_646

def word868_3_648 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_647 word868_3_29

def word868_3_649 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2621 32#64)

def word868_3_650 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_648 word868_3_649

def word868_3_651 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2627, 2565), (2631, 2569), (2635, 2573), (2639, 2577), (2643, 2581), (2647, 2585), (2651, 2589), (2655, 2593),
    (2659, 2597)]

def word868_3_652 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2621)]

def word868_3_653 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2665, 2627), (2669, 2631), (2673, 2635), (2677, 2639), (2681, 2643), (2685, 2647), (2689, 2651), (2693, 2655),
    (2697, 2659)]

def word868_3_654 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2701, 2)]

def word868_3_655 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_653 word868_3_654

def word868_3_656 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2713, 2701)]

def word868_3_657 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_655 word868_3_656

def word868_3_658 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2705, 2)]

def word868_3_659 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2705)]

def word868_3_660 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_659 word868_3_19

def word868_3_661 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_658 word868_3_660

def word868_3_662 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_653 word868_3_661

def word868_3_663 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2713 0#64)

def word868_3_664 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_662 word868_3_663

def word868_3_665 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_657, 868, 42)) (some 68) ([2]) (some (2, word868_3_664, 868, 43))

def word868_3_666 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_652 word868_3_665

def word868_3_667 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_651 word868_3_666

def word868_3_668 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_650 word868_3_667

def word868_3_669 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_668 word868_3_29

def word868_3_670 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2717, 2681)]

def word868_3_671 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_669 word868_3_670

def word868_3_672 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2721, 2685)]

def word868_3_673 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_671 word868_3_672

def word868_3_674 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2725, 2713)]

def word868_3_675 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_673 word868_3_674

def word868_3_676 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2731, 2665), (2735, 2669), (2739, 2673), (2743, 2677), (2747, 2721), (2751, 2689), (2755, 2693), (2759, 2725),
    (2763, 2697)]

def word868_3_677 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2717), (4, 2721), (6, 2725)]

def word868_3_678 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2769, 2731), (2773, 2735), (2777, 2739), (2781, 2743), (2785, 2747), (2789, 2751), (2793, 2755), (2797, 2759),
    (2801, 2763)]

def word868_3_679 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2809, 2)]

def word868_3_680 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2809)]

def word868_3_681 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_680 word868_3_19

def word868_3_682 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_679 word868_3_681

def word868_3_683 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_678 word868_3_682

def word868_3_684 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_678, 868, 44)) (some 332) ([2, 4, 6]) (some (2, word868_3_683, 868, 45))

def word868_3_685 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_677 word868_3_684

def word868_3_686 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_676 word868_3_685

def word868_3_687 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_675 word868_3_686

def word868_3_688 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_687 word868_3_29

def word868_3_689 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2825 32#64)

def word868_3_690 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_688 word868_3_689

def word868_3_691 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2831, 2769), (2835, 2773), (2839, 2777), (2843, 2781), (2847, 2785), (2851, 2789), (2855, 2793), (2859, 2797),
    (2863, 2801)]

def word868_3_692 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2825)]

def word868_3_693 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2869, 2831), (2873, 2835), (2877, 2839), (2881, 2843), (2885, 2847), (2889, 2851), (2893, 2855), (2897, 2859),
    (2901, 2863)]

def word868_3_694 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2905, 2)]

def word868_3_695 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_693 word868_3_694

def word868_3_696 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2913, 2905)]

def word868_3_697 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_695 word868_3_696

def word868_3_698 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2909, 2)]

def word868_3_699 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2909)]

def word868_3_700 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_699 word868_3_19

def word868_3_701 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_698 word868_3_700

def word868_3_702 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_693 word868_3_701

def word868_3_703 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2913 0#64)

def word868_3_704 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_702 word868_3_703

def word868_3_705 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_697, 868, 46)) (some 68) ([2]) (some (2, word868_3_704, 868, 47))

def word868_3_706 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_692 word868_3_705

def word868_3_707 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_691 word868_3_706

def word868_3_708 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_690 word868_3_707

def word868_3_709 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_708 word868_3_29

def word868_3_710 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2921, 2877)]

def word868_3_711 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_709 word868_3_710

def word868_3_712 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2925, 2885)]

def word868_3_713 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_711 word868_3_712

def word868_3_714 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2929, 2913)]

def word868_3_715 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_713 word868_3_714

def word868_3_716 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2935, 2869), (2939, 2873), (2943, 2881), (2947, 2889), (2951, 2893), (2955, 2897), (2959, 2901), (2963, 2929)]

def word868_3_717 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2921), (4, 2925), (6, 2929)]

def word868_3_718 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(2969, 2935), (2973, 2939), (2977, 2943), (2981, 2947), (2985, 2951), (2989, 2955), (2993, 2959), (2997, 2963)]

def word868_3_719 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3005, 2)]

def word868_3_720 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3005)]

def word868_3_721 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_720 word868_3_19

def word868_3_722 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_719 word868_3_721

def word868_3_723 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_718 word868_3_722

def word868_3_724 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_718, 868, 48)) (some 332) ([2, 4, 6]) (some (2, word868_3_723, 868, 49))

def word868_3_725 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_717 word868_3_724

def word868_3_726 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_716 word868_3_725

def word868_3_727 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_715 word868_3_726

def word868_3_728 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_727 word868_3_29

def word868_3_729 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3021 256#64)

def word868_3_730 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_728 word868_3_729

def word868_3_731 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3027, 2969), (3031, 2973), (3035, 2977), (3039, 2981), (3043, 2985), (3047, 2989), (3051, 2993), (3055, 2997)]

def word868_3_732 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3021)]

def word868_3_733 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3061, 3027), (3065, 3031), (3069, 3035), (3073, 3039), (3077, 3043), (3081, 3047), (3085, 3051), (3089, 3055)]

def word868_3_734 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3093, 2)]

def word868_3_735 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_733 word868_3_734

def word868_3_736 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3101, 3093)]

def word868_3_737 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_735 word868_3_736

def word868_3_738 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3097, 2)]

def word868_3_739 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3097)]

def word868_3_740 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_739 word868_3_19

def word868_3_741 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_738 word868_3_740

def word868_3_742 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_733 word868_3_741

def word868_3_743 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3101 0#64)

def word868_3_744 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_742 word868_3_743

def word868_3_745 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_737, 868, 50)) (some 68) ([2]) (some (2, word868_3_744, 868, 51))

def word868_3_746 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_732 word868_3_745

def word868_3_747 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_731 word868_3_746

def word868_3_748 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_730 word868_3_747

def word868_3_749 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_748 word868_3_29

def word868_3_750 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3109 Flapjack.WordStore.heapLength

def word868_3_751 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3113 3109 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_752 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_750 word868_3_751

def word868_3_753 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3117 3113

def word868_3_754 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_752 word868_3_753

def word868_3_755 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3121 (Flapjack.WordLangAddr.addr 3117 18446744073709551200#64))

def word868_3_756 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_754 word868_3_755

def word868_3_757 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3125 (Flapjack.WordLangAddr.addr 3121 40#64))

def word868_3_758 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_756 word868_3_757

def word868_3_759 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_749 word868_3_758

def word868_3_760 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3129, 3101)]

def word868_3_761 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_759 word868_3_760

def word868_3_762 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3135, 3061), (3139, 3065), (3143, 3069), (3147, 3073), (3151, 3129), (3155, 3077), (3159, 3081), (3163, 3085),
    (3167, 3089)]

def word868_3_763 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3125), (4, 3129)]

def word868_3_764 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3173, 3135), (3177, 3139), (3181, 3143), (3185, 3147), (3189, 3151), (3193, 3155), (3197, 3159), (3201, 3163),
    (3205, 3167)]

def word868_3_765 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3213, 2)]

def word868_3_766 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3213)]

def word868_3_767 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_766 word868_3_19

def word868_3_768 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_765 word868_3_767

def word868_3_769 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_764 word868_3_768

def word868_3_770 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_764, 868, 52)) (some 839) ([2, 4]) (some (2, word868_3_769, 868, 53))

def word868_3_771 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_763 word868_3_770

def word868_3_772 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_762 word868_3_771

def word868_3_773 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_761 word868_3_772

def word868_3_774 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_773 word868_3_29

def word868_3_775 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3229 32#64)

def word868_3_776 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_774 word868_3_775

def word868_3_777 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3235, 3173), (3239, 3177), (3243, 3181), (3247, 3185), (3251, 3189), (3255, 3193), (3259, 3197), (3263, 3201),
    (3267, 3205)]

def word868_3_778 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3229)]

def word868_3_779 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3273, 3235), (3277, 3239), (3281, 3243), (3285, 3247), (3289, 3251), (3293, 3255), (3297, 3259), (3301, 3263),
    (3305, 3267)]

def word868_3_780 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3309, 2)]

def word868_3_781 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_779 word868_3_780

def word868_3_782 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3321, 3309)]

def word868_3_783 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_781 word868_3_782

def word868_3_784 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3313, 2)]

def word868_3_785 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3313)]

def word868_3_786 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_785 word868_3_19

def word868_3_787 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_784 word868_3_786

def word868_3_788 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_779 word868_3_787

def word868_3_789 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3321 0#64)

def word868_3_790 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_788 word868_3_789

def word868_3_791 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_783, 868, 54)) (some 68) ([2]) (some (2, word868_3_790, 868, 55))

def word868_3_792 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_778 word868_3_791

def word868_3_793 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_777 word868_3_792

def word868_3_794 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_776 word868_3_793

def word868_3_795 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_794 word868_3_29

def word868_3_796 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3325 Flapjack.WordStore.heapLength

def word868_3_797 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3329 3325 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_798 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_796 word868_3_797

def word868_3_799 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3333 3329

def word868_3_800 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_798 word868_3_799

def word868_3_801 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3337 (Flapjack.WordLangAddr.addr 3333 18446744073709551088#64))

def word868_3_802 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_800 word868_3_801

def word868_3_803 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_795 word868_3_802

def word868_3_804 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3341, 3293)]

def word868_3_805 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3345 (Flapjack.WordLangAddr.addr 3341 56#64))

def word868_3_806 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_804 word868_3_805

def word868_3_807 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_803 word868_3_806

def word868_3_808 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3349, 3321)]

def word868_3_809 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_807 word868_3_808

def word868_3_810 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3355, 3273), (3359, 3277), (3363, 3281), (3367, 3349), (3371, 3285), (3375, 3289), (3379, 3297), (3383, 3301),
    (3387, 3305)]

def word868_3_811 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3337), (4, 3345), (6, 3349)]

def word868_3_812 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3393, 3355), (3397, 3359), (3401, 3363), (3405, 3367), (3409, 3371), (3413, 3375), (3417, 3379), (3421, 3383),
    (3425, 3387)]

def word868_3_813 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3433, 2)]

def word868_3_814 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3433)]

def word868_3_815 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_814 word868_3_19

def word868_3_816 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_813 word868_3_815

def word868_3_817 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_812 word868_3_816

def word868_3_818 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_812, 868, 56)) (some 332) ([2, 4, 6]) (some (2, word868_3_817, 868, 57))

def word868_3_819 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_811 word868_3_818

def word868_3_820 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_810 word868_3_819

def word868_3_821 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_809 word868_3_820

def word868_3_822 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_821 word868_3_29

def word868_3_823 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3449 32#64)

def word868_3_824 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_822 word868_3_823

def word868_3_825 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3455, 3393), (3459, 3397), (3463, 3401), (3467, 3405), (3471, 3409), (3475, 3413), (3479, 3417), (3483, 3421),
    (3487, 3425)]

def word868_3_826 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3449)]

def word868_3_827 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3493, 3455), (3497, 3459), (3501, 3463), (3505, 3467), (3509, 3471), (3513, 3475), (3517, 3479), (3521, 3483),
    (3525, 3487)]

def word868_3_828 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3529, 2)]

def word868_3_829 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_827 word868_3_828

def word868_3_830 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3537, 3529)]

def word868_3_831 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_829 word868_3_830

def word868_3_832 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3533, 2)]

def word868_3_833 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3533)]

def word868_3_834 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_833 word868_3_19

def word868_3_835 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_832 word868_3_834

def word868_3_836 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_827 word868_3_835

def word868_3_837 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3537 0#64)

def word868_3_838 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_836 word868_3_837

def word868_3_839 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_831, 868, 58)) (some 68) ([2]) (some (2, word868_3_838, 868, 59))

def word868_3_840 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_826 word868_3_839

def word868_3_841 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_825 word868_3_840

def word868_3_842 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_824 word868_3_841

def word868_3_843 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_842 word868_3_29

def word868_3_844 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3545 Flapjack.WordStore.heapLength

def word868_3_845 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3549 3545 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_846 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_844 word868_3_845

def word868_3_847 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3553 3549

def word868_3_848 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_846 word868_3_847

def word868_3_849 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3557 (Flapjack.WordLangAddr.addr 3553 18446744073709551200#64))

def word868_3_850 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_848 word868_3_849

def word868_3_851 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3561 (Flapjack.WordLangAddr.addr 3557 56#64))

def word868_3_852 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_850 word868_3_851

def word868_3_853 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_843 word868_3_852

def word868_3_854 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3565 Flapjack.WordStore.heapLength

def word868_3_855 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3569 3565 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_856 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_854 word868_3_855

def word868_3_857 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3573 3569

def word868_3_858 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_856 word868_3_857

def word868_3_859 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3577 (Flapjack.WordLangAddr.addr 3573 18446744073709551200#64))

def word868_3_860 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_858 word868_3_859

def word868_3_861 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3581 (Flapjack.WordLangAddr.addr 3577 64#64))

def word868_3_862 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_860 word868_3_861

def word868_3_863 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_853 word868_3_862

def word868_3_864 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3585, 3537)]

def word868_3_865 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_863 word868_3_864

def word868_3_866 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3591, 3493), (3595, 3497), (3599, 3501), (3603, 3505), (3607, 3509), (3611, 3513), (3615, 3517), (3619, 3521),
    (3623, 3585), (3627, 3525)]

def word868_3_867 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3561), (4, 3581), (6, 3585)]

def word868_3_868 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3633, 3591), (3637, 3595), (3641, 3599), (3645, 3603), (3649, 3607), (3653, 3611), (3657, 3615), (3661, 3619),
    (3665, 3623), (3669, 3627)]

def word868_3_869 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3677, 2)]

def word868_3_870 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3677)]

def word868_3_871 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_870 word868_3_19

def word868_3_872 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_869 word868_3_871

def word868_3_873 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_868 word868_3_872

def word868_3_874 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_868, 868, 60)) (some 847) ([2, 4, 6]) (some (2, word868_3_873, 868, 61))

def word868_3_875 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_867 word868_3_874

def word868_3_876 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_866 word868_3_875

def word868_3_877 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_865 word868_3_876

def word868_3_878 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_877 word868_3_29

def word868_3_879 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3693 32#64)

def word868_3_880 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_878 word868_3_879

def word868_3_881 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3699, 3633), (3703, 3637), (3707, 3641), (3711, 3645), (3715, 3649), (3719, 3653), (3723, 3657), (3727, 3661),
    (3731, 3665), (3735, 3669)]

def word868_3_882 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3693)]

def word868_3_883 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3741, 3699), (3745, 3703), (3749, 3707), (3753, 3711), (3757, 3715), (3761, 3719), (3765, 3723), (3769, 3727),
    (3773, 3731), (3777, 3735)]

def word868_3_884 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3781, 2)]

def word868_3_885 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_883 word868_3_884

def word868_3_886 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3789, 3781)]

def word868_3_887 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_885 word868_3_886

def word868_3_888 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3785, 2)]

def word868_3_889 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3785)]

def word868_3_890 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_889 word868_3_19

def word868_3_891 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_888 word868_3_890

def word868_3_892 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_883 word868_3_891

def word868_3_893 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3789 0#64)

def word868_3_894 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_892 word868_3_893

def word868_3_895 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_887, 868, 62)) (some 68) ([2]) (some (2, word868_3_894, 868, 63))

def word868_3_896 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_882 word868_3_895

def word868_3_897 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_881 word868_3_896

def word868_3_898 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_880 word868_3_897

def word868_3_899 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_898 word868_3_29

def word868_3_900 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3797, 3745)]

def word868_3_901 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_899 word868_3_900

def word868_3_902 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3801, 3757)]

def word868_3_903 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_901 word868_3_902

def word868_3_904 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(3805, 3789)]

def word868_3_905 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_903 word868_3_904

def word868_3_906 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3811, 3741), (3815, 3749), (3819, 3753), (3823, 3761), (3827, 3765), (3831, 3805), (3835, 3769), (3839, 3773),
    (3843, 3777)]

def word868_3_907 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3797), (4, 3801), (6, 3805)]

def word868_3_908 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3849, 3811), (3853, 3815), (3857, 3819), (3861, 3823), (3865, 3827), (3869, 3831), (3873, 3835), (3877, 3839),
    (3881, 3843)]

def word868_3_909 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(3889, 2)]

def word868_3_910 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3889)]

def word868_3_911 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_910 word868_3_19

def word868_3_912 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_909 word868_3_911

def word868_3_913 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_908 word868_3_912

def word868_3_914 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_908, 868, 64)) (some 158) ([2, 4, 6]) (some (2, word868_3_913, 868, 65))

def word868_3_915 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_907 word868_3_914

def word868_3_916 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_906 word868_3_915

def word868_3_917 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_905 word868_3_916

def word868_3_918 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_917 word868_3_29

def word868_3_919 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3901 Flapjack.WordStore.heapLength

def word868_3_920 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3905 3901 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_921 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_919 word868_3_920

def word868_3_922 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3909 3905

def word868_3_923 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_921 word868_3_922

def word868_3_924 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3913 (Flapjack.WordLangAddr.addr 3909 18446744073709551200#64))

def word868_3_925 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_923 word868_3_924

def word868_3_926 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3917 (Flapjack.WordLangAddr.addr 3913 0#64))

def word868_3_927 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_925 word868_3_926

def word868_3_928 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_918 word868_3_927

def word868_3_929 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 3921 Flapjack.WordStore.heapLength

def word868_3_930 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 3925 3921 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_931 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_929 word868_3_930

def word868_3_932 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 3929 3925

def word868_3_933 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_931 word868_3_932

def word868_3_934 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3933 (Flapjack.WordLangAddr.addr 3929 18446744073709551200#64))

def word868_3_935 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_933 word868_3_934

def word868_3_936 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 3937 (Flapjack.WordLangAddr.addr 3933 8#64))

def word868_3_937 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_935 word868_3_936

def word868_3_938 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_928 word868_3_937

def word868_3_939 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3943, 3849), (3947, 3853), (3951, 3857), (3955, 3861), (3959, 3865), (3963, 3869), (3967, 3873), (3971, 3877),
    (3975, 3881)]

def word868_3_940 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 3917), (4, 3937)]

def word868_3_941 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(3981, 3943), (3985, 3947), (3989, 3951), (3993, 3955), (3997, 3959), (4001, 3963), (4005, 3967), (4009, 3971),
    (4013, 3975)]

def word868_3_942 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4017, 2)]

def word868_3_943 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_941 word868_3_942

def word868_3_944 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4025, 4017)]

def word868_3_945 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_943 word868_3_944

def word868_3_946 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4021, 2)]

def word868_3_947 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4021)]

def word868_3_948 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_947 word868_3_19

def word868_3_949 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_946 word868_3_948

def word868_3_950 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_941 word868_3_949

def word868_3_951 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4025 0#64)

def word868_3_952 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_950 word868_3_951

def word868_3_953 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_945, 868, 66)) (some 93) ([2, 4]) (some (2, word868_3_952, 868, 67))

def word868_3_954 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_940 word868_3_953

def word868_3_955 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_939 word868_3_954

def word868_3_956 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_938 word868_3_955

def word868_3_957 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_956 word868_3_29

def word868_3_958 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4033, 4025)]

def word868_3_959 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_957 word868_3_958

def word868_3_960 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4037, 3985)]

def word868_3_961 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4041 (Flapjack.WordLangAddr.addr 4037 112#64))

def word868_3_962 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_960 word868_3_961

def word868_3_963 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_959 word868_3_962

def word868_3_964 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4053 110#64)

def word868_3_965 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_964

def word868_3_966 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4057, 4053)]

def word868_3_967 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4057)

def word868_3_968 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_966 word868_3_967

def word868_3_969 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_965 word868_3_968

def word868_3_970 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4061 4#64)

def word868_3_971 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_969 word868_3_970

def word868_3_972 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4061)]

def word868_3_973 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_972 word868_3_19

def word868_3_974 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_971 word868_3_973

def word868_3_975 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word868_3_976 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4033 (Flapjack.WordRegImm.reg 4041) word868_3_974 word868_3_975

def word868_3_977 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_976 word868_3_29

def word868_3_978 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_963 word868_3_977

def word868_3_979 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_978 word868_3_29

def word868_3_980 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4089, 3997)]

def word868_3_981 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_979 word868_3_980

def word868_3_982 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4093, 4037)]

def word868_3_983 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4097 (Flapjack.WordLangAddr.addr 4093 40#64))

def word868_3_984 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_982 word868_3_983

def word868_3_985 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_981 word868_3_984

def word868_3_986 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4105 32#64)

def word868_3_987 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_985 word868_3_986

def word868_3_988 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4111, 3981), (4115, 4093), (4119, 3989), (4123, 3993), (4127, 4001), (4131, 4005), (4135, 4009), (4139, 4013)]

def word868_3_989 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4089), (4, 4097), (6, 4105)]

def word868_3_990 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4145, 4111), (4149, 4115), (4153, 4119), (4157, 4123), (4161, 4127), (4165, 4131), (4169, 4135), (4173, 4139)]

def word868_3_991 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4177, 2)]

def word868_3_992 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_990 word868_3_991

def word868_3_993 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4189, 4177)]

def word868_3_994 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_992 word868_3_993

def word868_3_995 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4181, 2)]

def word868_3_996 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4181)]

def word868_3_997 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_996 word868_3_19

def word868_3_998 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_995 word868_3_997

def word868_3_999 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_990 word868_3_998

def word868_3_1000 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4189 0#64)

def word868_3_1001 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_999 word868_3_1000

def word868_3_1002 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_994, 868, 68)) (some 79) ([2, 4, 6]) (some (2, word868_3_1001, 868, 69))

def word868_3_1003 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_989 word868_3_1002

def word868_3_1004 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_988 word868_3_1003

def word868_3_1005 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_987 word868_3_1004

def word868_3_1006 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1005 word868_3_29

def word868_3_1007 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4193, 4189)]

def word868_3_1008 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1006 word868_3_1007

def word868_3_1009 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4197 0#64)

def word868_3_1010 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1008 word868_3_1009

def word868_3_1011 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4209 111#64)

def word868_3_1012 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_1011

def word868_3_1013 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4213, 4209)]

def word868_3_1014 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4213)

def word868_3_1015 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1013 word868_3_1014

def word868_3_1016 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1012 word868_3_1015

def word868_3_1017 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4217 4#64)

def word868_3_1018 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1016 word868_3_1017

def word868_3_1019 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4217)]

def word868_3_1020 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1019 word868_3_19

def word868_3_1021 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1018 word868_3_1020

def word868_3_1022 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4193 (Flapjack.WordRegImm.reg 4197) word868_3_1021 word868_3_975

def word868_3_1023 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1022 word868_3_29

def word868_3_1024 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1010 word868_3_1023

def word868_3_1025 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1024 word868_3_29

def word868_3_1026 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4245, 4165)]

def word868_3_1027 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1025 word868_3_1026

def word868_3_1028 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4249, 4149)]

def word868_3_1029 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4253 (Flapjack.WordLangAddr.addr 4249 32#64))

def word868_3_1030 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1028 word868_3_1029

def word868_3_1031 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1027 word868_3_1030

def word868_3_1032 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4261 32#64)

def word868_3_1033 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1031 word868_3_1032

def word868_3_1034 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4267, 4145), (4271, 4249), (4275, 4153), (4279, 4157), (4283, 4161), (4287, 4169), (4291, 4173)]

def word868_3_1035 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4245), (4, 4253), (6, 4261)]

def word868_3_1036 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0
  [(4297, 4267), (4301, 4271), (4305, 4275), (4309, 4279), (4313, 4283), (4317, 4287), (4321, 4291)]

def word868_3_1037 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4325, 2)]

def word868_3_1038 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1036 word868_3_1037

def word868_3_1039 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4337, 4325)]

def word868_3_1040 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1038 word868_3_1039

def word868_3_1041 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4329, 2)]

def word868_3_1042 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4329)]

def word868_3_1043 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1042 word868_3_19

def word868_3_1044 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1041 word868_3_1043

def word868_3_1045 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1036 word868_3_1044

def word868_3_1046 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4337 0#64)

def word868_3_1047 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1045 word868_3_1046

def word868_3_1048 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_1040, 868, 70)) (some 79) ([2, 4, 6]) (some (2, word868_3_1047, 868, 71))

def word868_3_1049 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1035 word868_3_1048

def word868_3_1050 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1034 word868_3_1049

def word868_3_1051 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1033 word868_3_1050

def word868_3_1052 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1051 word868_3_29

def word868_3_1053 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4341, 4337)]

def word868_3_1054 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1052 word868_3_1053

def word868_3_1055 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4345 0#64)

def word868_3_1056 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1054 word868_3_1055

def word868_3_1057 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4357 112#64)

def word868_3_1058 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_1057

def word868_3_1059 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4361, 4357)]

def word868_3_1060 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4361)

def word868_3_1061 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1059 word868_3_1060

def word868_3_1062 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1058 word868_3_1061

def word868_3_1063 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4365 4#64)

def word868_3_1064 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1062 word868_3_1063

def word868_3_1065 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4365)]

def word868_3_1066 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1065 word868_3_19

def word868_3_1067 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1064 word868_3_1066

def word868_3_1068 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4341 (Flapjack.WordRegImm.reg 4345) word868_3_1067 word868_3_975

def word868_3_1069 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1068 word868_3_29

def word868_3_1070 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1056 word868_3_1069

def word868_3_1071 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1070 word868_3_29

def word868_3_1072 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4393, 4321)]

def word868_3_1073 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1071 word868_3_1072

def word868_3_1074 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4397, 4301)]

def word868_3_1075 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4401 (Flapjack.WordLangAddr.addr 4397 48#64))

def word868_3_1076 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1074 word868_3_1075

def word868_3_1077 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1073 word868_3_1076

def word868_3_1078 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4409 32#64)

def word868_3_1079 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1077 word868_3_1078

def word868_3_1080 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4415, 4297), (4419, 4397), (4423, 4305), (4427, 4309), (4431, 4313), (4435, 4317)]

def word868_3_1081 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4393), (4, 4401), (6, 4409)]

def word868_3_1082 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4441, 4415), (4445, 4419), (4449, 4423), (4453, 4427), (4457, 4431), (4461, 4435)]

def word868_3_1083 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4465, 2)]

def word868_3_1084 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1082 word868_3_1083

def word868_3_1085 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4477, 4465)]

def word868_3_1086 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1084 word868_3_1085

def word868_3_1087 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4469, 2)]

def word868_3_1088 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4469)]

def word868_3_1089 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1088 word868_3_19

def word868_3_1090 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1087 word868_3_1089

def word868_3_1091 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1082 word868_3_1090

def word868_3_1092 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4477 0#64)

def word868_3_1093 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1091 word868_3_1092

def word868_3_1094 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_1086, 868, 72)) (some 79) ([2, 4, 6]) (some (2, word868_3_1093, 868, 73))

def word868_3_1095 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1081 word868_3_1094

def word868_3_1096 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1080 word868_3_1095

def word868_3_1097 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1079 word868_3_1096

def word868_3_1098 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1097 word868_3_29

def word868_3_1099 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4481, 4477)]

def word868_3_1100 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1098 word868_3_1099

def word868_3_1101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4485 0#64)

def word868_3_1102 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1100 word868_3_1101

def word868_3_1103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4497 113#64)

def word868_3_1104 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_1103

def word868_3_1105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4501, 4497)]

def word868_3_1106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4501)

def word868_3_1107 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1105 word868_3_1106

def word868_3_1108 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1104 word868_3_1107

def word868_3_1109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4505 4#64)

def word868_3_1110 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1108 word868_3_1109

def word868_3_1111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4505)]

def word868_3_1112 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1111 word868_3_19

def word868_3_1113 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1110 word868_3_1112

def word868_3_1114 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4481 (Flapjack.WordRegImm.reg 4485) word868_3_1113 word868_3_975

def word868_3_1115 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1114 word868_3_29

def word868_3_1116 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1102 word868_3_1115

def word868_3_1117 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1116 word868_3_29

def word868_3_1118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4533, 4453)]

def word868_3_1119 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1117 word868_3_1118

def word868_3_1120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4537, 4445)]

def word868_3_1121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4541 (Flapjack.WordLangAddr.addr 4537 56#64))

def word868_3_1122 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1120 word868_3_1121

def word868_3_1123 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1119 word868_3_1122

def word868_3_1124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4549 256#64)

def word868_3_1125 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1123 word868_3_1124

def word868_3_1126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4555, 4441), (4559, 4537), (4563, 4449), (4567, 4457), (4571, 4461)]

def word868_3_1127 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4533), (4, 4541), (6, 4549)]

def word868_3_1128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4577, 4555), (4581, 4559), (4585, 4563), (4589, 4567), (4593, 4571)]

def word868_3_1129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4597, 2)]

def word868_3_1130 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1128 word868_3_1129

def word868_3_1131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4609, 4597)]

def word868_3_1132 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1130 word868_3_1131

def word868_3_1133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4601, 2)]

def word868_3_1134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4601)]

def word868_3_1135 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1134 word868_3_19

def word868_3_1136 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1133 word868_3_1135

def word868_3_1137 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1128 word868_3_1136

def word868_3_1138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4609 0#64)

def word868_3_1139 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1137 word868_3_1138

def word868_3_1140 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_1132, 868, 74)) (some 79) ([2, 4, 6]) (some (2, word868_3_1139, 868, 75))

def word868_3_1141 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1127 word868_3_1140

def word868_3_1142 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1126 word868_3_1141

def word868_3_1143 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1125 word868_3_1142

def word868_3_1144 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1143 word868_3_29

def word868_3_1145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4613, 4609)]

def word868_3_1146 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1144 word868_3_1145

def word868_3_1147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4617 0#64)

def word868_3_1148 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1146 word868_3_1147

def word868_3_1149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4629 114#64)

def word868_3_1150 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_1149

def word868_3_1151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4633, 4629)]

def word868_3_1152 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4633)

def word868_3_1153 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1151 word868_3_1152

def word868_3_1154 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1150 word868_3_1153

def word868_3_1155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4637 4#64)

def word868_3_1156 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1154 word868_3_1155

def word868_3_1157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4637)]

def word868_3_1158 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1157 word868_3_19

def word868_3_1159 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1156 word868_3_1158

def word868_3_1160 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4613 (Flapjack.WordRegImm.reg 4617) word868_3_1159 word868_3_975

def word868_3_1161 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1160 word868_3_29

def word868_3_1162 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1148 word868_3_1161

def word868_3_1163 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1162 word868_3_29

def word868_3_1164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4665, 4585)]

def word868_3_1165 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1163 word868_3_1164

def word868_3_1166 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4669, 4581)]

def word868_3_1167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4673 (Flapjack.WordLangAddr.addr 4669 192#64))

def word868_3_1168 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1166 word868_3_1167

def word868_3_1169 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1165 word868_3_1168

def word868_3_1170 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4681 32#64)

def word868_3_1171 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1169 word868_3_1170

def word868_3_1172 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4687, 4577), (4691, 4669), (4695, 4589), (4699, 4593)]

def word868_3_1173 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4665), (4, 4673), (6, 4681)]

def word868_3_1174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4705, 4687), (4709, 4691), (4713, 4695), (4717, 4699)]

def word868_3_1175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4721, 2)]

def word868_3_1176 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1174 word868_3_1175

def word868_3_1177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4733, 4721)]

def word868_3_1178 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1176 word868_3_1177

def word868_3_1179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4725, 2)]

def word868_3_1180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4725)]

def word868_3_1181 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1180 word868_3_19

def word868_3_1182 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1179 word868_3_1181

def word868_3_1183 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1174 word868_3_1182

def word868_3_1184 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4733 0#64)

def word868_3_1185 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1183 word868_3_1184

def word868_3_1186 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_1178, 868, 76)) (some 79) ([2, 4, 6]) (some (2, word868_3_1185, 868, 77))

def word868_3_1187 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1173 word868_3_1186

def word868_3_1188 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1172 word868_3_1187

def word868_3_1189 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1171 word868_3_1188

def word868_3_1190 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1189 word868_3_29

def word868_3_1191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4737, 4733)]

def word868_3_1192 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1190 word868_3_1191

def word868_3_1193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4741 0#64)

def word868_3_1194 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1192 word868_3_1193

def word868_3_1195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4753 115#64)

def word868_3_1196 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_1195

def word868_3_1197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4757, 4753)]

def word868_3_1198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4757)

def word868_3_1199 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1197 word868_3_1198

def word868_3_1200 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1196 word868_3_1199

def word868_3_1201 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4761 4#64)

def word868_3_1202 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1200 word868_3_1201

def word868_3_1203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4761)]

def word868_3_1204 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1203 word868_3_19

def word868_3_1205 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1202 word868_3_1204

def word868_3_1206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4737 (Flapjack.WordRegImm.reg 4741) word868_3_1205 word868_3_975

def word868_3_1207 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1206 word868_3_29

def word868_3_1208 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1194 word868_3_1207

def word868_3_1209 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1208 word868_3_29

def word868_3_1210 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.get 4789 Flapjack.WordStore.heapLength

def word868_3_1211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 4793 4789 (Flapjack.WordRegImm.imm 1#64)))

def word868_3_1212 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1210 word868_3_1211

def word868_3_1213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 4797 4793

def word868_3_1214 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1212 word868_3_1213

def word868_3_1215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4801 (Flapjack.WordLangAddr.addr 4797 18446744073709551200#64))

def word868_3_1216 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1214 word868_3_1215

def word868_3_1217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4805 (Flapjack.WordLangAddr.addr 4801 48#64))

def word868_3_1218 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1216 word868_3_1217

def word868_3_1219 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1209 word868_3_1218

def word868_3_1220 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4809, 4709)]

def word868_3_1221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4813 (Flapjack.WordLangAddr.addr 4809 200#64))

def word868_3_1222 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1220 word868_3_1221

def word868_3_1223 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1219 word868_3_1222

def word868_3_1224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4825 116#64)

def word868_3_1225 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_1224

def word868_3_1226 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4829, 4825)]

def word868_3_1227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4829)

def word868_3_1228 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1226 word868_3_1227

def word868_3_1229 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1225 word868_3_1228

def word868_3_1230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4833 4#64)

def word868_3_1231 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1229 word868_3_1230

def word868_3_1232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4833)]

def word868_3_1233 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1232 word868_3_19

def word868_3_1234 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1231 word868_3_1233

def word868_3_1235 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4805 (Flapjack.WordRegImm.reg 4813) word868_3_1234 word868_3_975

def word868_3_1236 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1235 word868_3_29

def word868_3_1237 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1223 word868_3_1236

def word868_3_1238 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1237 word868_3_29

def word868_3_1239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4861, 4717)]

def word868_3_1240 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1238 word868_3_1239

def word868_3_1241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4865, 4809)]

def word868_3_1242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4869 (Flapjack.WordLangAddr.addr 4865 224#64))

def word868_3_1243 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1241 word868_3_1242

def word868_3_1244 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1240 word868_3_1243

def word868_3_1245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4877 32#64)

def word868_3_1246 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1244 word868_3_1245

def word868_3_1247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4883, 4705), (4887, 4865), (4891, 4713)]

def word868_3_1248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4861), (4, 4869), (6, 4877)]

def word868_3_1249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4897, 4883), (4901, 4887), (4905, 4891)]

def word868_3_1250 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4909, 2)]

def word868_3_1251 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1249 word868_3_1250

def word868_3_1252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4921, 4909)]

def word868_3_1253 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1251 word868_3_1252

def word868_3_1254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4913, 2)]

def word868_3_1255 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4913)]

def word868_3_1256 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1255 word868_3_19

def word868_3_1257 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1254 word868_3_1256

def word868_3_1258 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1249 word868_3_1257

def word868_3_1259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4921 0#64)

def word868_3_1260 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1258 word868_3_1259

def word868_3_1261 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_1253, 868, 78)) (some 79) ([2, 4, 6]) (some (2, word868_3_1260, 868, 79))

def word868_3_1262 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1248 word868_3_1261

def word868_3_1263 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1247 word868_3_1262

def word868_3_1264 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1246 word868_3_1263

def word868_3_1265 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1264 word868_3_29

def word868_3_1266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4925, 4921)]

def word868_3_1267 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1265 word868_3_1266

def word868_3_1268 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4929 0#64)

def word868_3_1269 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1267 word868_3_1268

def word868_3_1270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4941 117#64)

def word868_3_1271 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_1270

def word868_3_1272 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4945, 4941)]

def word868_3_1273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 4945)

def word868_3_1274 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1272 word868_3_1273

def word868_3_1275 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1271 word868_3_1274

def word868_3_1276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4949 4#64)

def word868_3_1277 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1275 word868_3_1276

def word868_3_1278 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4949)]

def word868_3_1279 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1278 word868_3_19

def word868_3_1280 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1277 word868_3_1279

def word868_3_1281 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4925 (Flapjack.WordRegImm.reg 4929) word868_3_1280 word868_3_975

def word868_3_1282 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1281 word868_3_29

def word868_3_1283 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1269 word868_3_1282

def word868_3_1284 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1283 word868_3_29

def word868_3_1285 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4977, 4905)]

def word868_3_1286 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1284 word868_3_1285

def word868_3_1287 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4981, 4901)]

def word868_3_1288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4985 (Flapjack.WordLangAddr.addr 4981 232#64))

def word868_3_1289 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1287 word868_3_1288

def word868_3_1290 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1286 word868_3_1289

def word868_3_1291 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4993 32#64)

def word868_3_1292 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1290 word868_3_1291

def word868_3_1293 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4999, 4897)]

def word868_3_1294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 4977), (4, 4985), (6, 4993)]

def word868_3_1295 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(5005, 4999)]

def word868_3_1296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(5009, 2)]

def word868_3_1297 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1295 word868_3_1296

def word868_3_1298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(5021, 5009)]

def word868_3_1299 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1297 word868_3_1298

def word868_3_1300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(5013, 2)]

def word868_3_1301 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 5013)]

def word868_3_1302 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1301 word868_3_19

def word868_3_1303 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1300 word868_3_1302

def word868_3_1304 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1295 word868_3_1303

def word868_3_1305 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5021 0#64)

def word868_3_1306 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1304 word868_3_1305

def word868_3_1307 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), word868_3_1299, 868, 80)) (some 79) ([2, 4, 6]) (some (2, word868_3_1306, 868, 81))

def word868_3_1308 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1294 word868_3_1307

def word868_3_1309 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1293 word868_3_1308

def word868_3_1310 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1292 word868_3_1309

def word868_3_1311 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1310 word868_3_29

def word868_3_1312 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(5025, 5021)]

def word868_3_1313 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1311 word868_3_1312

def word868_3_1314 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5029 0#64)

def word868_3_1315 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1313 word868_3_1314

def word868_3_1316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5041 118#64)

def word868_3_1317 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_29 word868_3_1316

def word868_3_1318 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(5045, 5041)]

def word868_3_1319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 5045)

def word868_3_1320 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1318 word868_3_1319

def word868_3_1321 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1317 word868_3_1320

def word868_3_1322 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5049 4#64)

def word868_3_1323 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1321 word868_3_1322

def word868_3_1324 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 5049)]

def word868_3_1325 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1324 word868_3_19

def word868_3_1326 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1323 word868_3_1325

def word868_3_1327 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 5025 (Flapjack.WordRegImm.reg 5029) word868_3_1326 word868_3_975

def word868_3_1328 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1327 word868_3_29

def word868_3_1329 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1315 word868_3_1328

def word868_3_1330 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1329 word868_3_29

def word868_3_1331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 5077 0#64)

def word868_3_1332 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1330 word868_3_1331

def word868_3_1333 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 5077)]

def word868_3_1334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 5005 [2]

def word868_3_1335 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1333 word868_3_1334

def word868_3_1336 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_1332 word868_3_1335

def word868_3_1337 : WordLangProgHOL (BitVec 64) :=
.seq word868_3_0 word868_3_1336

def pass868_3 : WordLangProgHOL (BitVec 64) :=
word868_3_1337
theorem pass868_3_eq : WordAlloc.removeDeadProg (pass868_2) = pass868_3 := by
  kernel_rfl
#print axioms pass868_3_eq
end InitECandidate.Proofs.WordStages
