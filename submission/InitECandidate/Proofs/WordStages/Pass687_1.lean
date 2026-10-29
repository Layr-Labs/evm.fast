import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass687_0
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def word687_1_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def word687_1_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def word687_1_2 : WordLangProgHOL (BitVec 64) :=
.call (some (([56]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 2)) (some 69) ([]) (some (14, word687_1_1, 687, 3))

def word687_1_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def word687_1_4 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_2 word687_1_3

def word687_1_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 48 416#64)

def word687_1_6 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_4 word687_1_5

def word687_1_7 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_6 word687_1_5

def word687_1_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 48

def word687_1_9 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 4)) (some 68) ([48]) (some (48, word687_1_8, 687, 5))

def word687_1_10 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_7 word687_1_9

def word687_1_11 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_10 word687_1_3

def word687_1_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 32 416#64)

def word687_1_13 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_11 word687_1_12

def word687_1_14 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_13 word687_1_12

def word687_1_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 32

def word687_1_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 6)) (some 68) ([32]) (some (32, word687_1_15, 687, 7))

def word687_1_17 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_14 word687_1_16

def word687_1_18 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_17 word687_1_3

def word687_1_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 66 416#64)

def word687_1_20 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_18 word687_1_19

def word687_1_21 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_20 word687_1_19

def word687_1_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 66

def word687_1_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([32]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 8)) (some 68) ([66]) (some (66, word687_1_22, 687, 9))

def word687_1_24 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_21 word687_1_23

def word687_1_25 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_24 word687_1_3

def word687_1_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10 416#64)

def word687_1_27 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_25 word687_1_26

def word687_1_28 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_27 word687_1_26

def word687_1_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def word687_1_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([66]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 10)) (some 68) ([10]) (some (10, word687_1_29, 687, 11))

def word687_1_31 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_28 word687_1_30

def word687_1_32 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_31 word687_1_3

def word687_1_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 44 416#64)

def word687_1_34 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_32 word687_1_33

def word687_1_35 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_34 word687_1_33

def word687_1_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 44

def word687_1_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 12)) (some 68) ([44]) (some (44, word687_1_36, 687, 13))

def word687_1_38 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_35 word687_1_37

def word687_1_39 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_38 word687_1_3

def word687_1_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 416#64)

def word687_1_41 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_39 word687_1_40

def word687_1_42 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_41 word687_1_40

def word687_1_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def word687_1_44 : WordLangProgHOL (BitVec 64) :=
.call (some (([44]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 14)) (some 68) ([28]) (some (28, word687_1_43, 687, 15))

def word687_1_45 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_42 word687_1_44

def word687_1_46 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_45 word687_1_3

def word687_1_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 14)]

def word687_1_48 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_46 word687_1_47

def word687_1_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 416#64)

def word687_1_50 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_48 word687_1_49

def word687_1_51 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_50 word687_1_49

def word687_1_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 62

def word687_1_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 16)) (some 78) ([62, 20]) (some (62, word687_1_52, 687, 17))

def word687_1_54 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_51 word687_1_53

def word687_1_55 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_54 word687_1_3

def word687_1_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 14)]

def word687_1_57 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_55 word687_1_56

def word687_1_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 5544790254283102953#64)

def word687_1_59 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_57 word687_1_58

def word687_1_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 13698472384431417117#64)

def word687_1_61 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_59 word687_1_60

def word687_1_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 4628036095437277618#64)

def word687_1_63 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_61 word687_1_62

def word687_1_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 2762764518496934255#64)

def word687_1_65 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_63 word687_1_64

def word687_1_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 5544790254283102953#64)

def word687_1_67 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_65 word687_1_66

def word687_1_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 28)]

def word687_1_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 70 (Flapjack.WordLangAddr.addr 73 0#64))

def word687_1_70 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_68 word687_1_69

def word687_1_71 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_67 word687_1_70

def word687_1_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 13698472384431417117#64)

def word687_1_73 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_71 word687_1_72

def word687_1_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 70 (Flapjack.WordLangAddr.addr 73 8#64))

def word687_1_75 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_68 word687_1_74

def word687_1_76 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_73 word687_1_75

def word687_1_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 4628036095437277618#64)

def word687_1_78 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_76 word687_1_77

def word687_1_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 70 (Flapjack.WordLangAddr.addr 73 16#64))

def word687_1_80 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_68 word687_1_79

def word687_1_81 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_78 word687_1_80

def word687_1_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 2762764518496934255#64)

def word687_1_83 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_81 word687_1_82

def word687_1_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 70 (Flapjack.WordLangAddr.addr 73 24#64))

def word687_1_85 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_68 word687_1_84

def word687_1_86 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_83 word687_1_85

def word687_1_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 14)]

def word687_1_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 73 (Flapjack.WordRegImm.imm 192#64)))

def word687_1_89 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_87 word687_1_88

def word687_1_90 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_86 word687_1_89

def word687_1_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 10102850021236865696#64)

def word687_1_92 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_90 word687_1_91

def word687_1_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 15026249742141879542#64)

def word687_1_94 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_92 word687_1_93

def word687_1_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 2169086236411634456#64)

def word687_1_96 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_94 word687_1_95

def word687_1_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 2710440286313254821#64)

def word687_1_98 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_96 word687_1_97

def word687_1_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 10102850021236865696#64)

def word687_1_100 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_98 word687_1_99

def word687_1_101 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_100 word687_1_70

def word687_1_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 15026249742141879542#64)

def word687_1_103 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_101 word687_1_102

def word687_1_104 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_103 word687_1_75

def word687_1_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 2169086236411634456#64)

def word687_1_106 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_104 word687_1_105

def word687_1_107 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_106 word687_1_80

def word687_1_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 2710440286313254821#64)

def word687_1_109 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_107 word687_1_108

def word687_1_110 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_109 word687_1_85

def word687_1_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 28 73 (Flapjack.WordRegImm.imm 384#64)))

def word687_1_112 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_87 word687_1_111

def word687_1_113 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_110 word687_1_112

def word687_1_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 15230403791020821917#64)

def word687_1_115 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_113 word687_1_114

def word687_1_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 754611498739239741#64)

def word687_1_117 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_115 word687_1_116

def word687_1_118 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 7381016538464732716#64)

def word687_1_119 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_117 word687_1_118

def word687_1_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 1011752739694698287#64)

def word687_1_121 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_119 word687_1_120

def word687_1_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 15230403791020821917#64)

def word687_1_123 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_121 word687_1_122

def word687_1_124 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_123 word687_1_70

def word687_1_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 754611498739239741#64)

def word687_1_126 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_124 word687_1_125

def word687_1_127 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_126 word687_1_75

def word687_1_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 7381016538464732716#64)

def word687_1_129 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_127 word687_1_128

def word687_1_130 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_129 word687_1_80

def word687_1_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 70 1011752739694698287#64)

def word687_1_132 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_130 word687_1_131

def word687_1_133 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_132 word687_1_85

def word687_1_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 48)]

def word687_1_135 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_133 word687_1_134

def word687_1_136 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_135 word687_1_49

def word687_1_137 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_136 word687_1_49

def word687_1_138 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 18)) (some 78) ([62, 20]) (some (62, word687_1_52, 687, 19))

def word687_1_139 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_137 word687_1_138

def word687_1_140 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_139 word687_1_3

def word687_1_141 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_140 word687_1_134

def word687_1_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 4)]

def word687_1_143 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_141 word687_1_142

def word687_1_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 384#64)

def word687_1_145 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_143 word687_1_144

def word687_1_146 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_145 word687_1_144

def word687_1_147 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 20)) (some 77) ([62, 20, 52]) (some (62, word687_1_52, 687, 21))

def word687_1_148 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_146 word687_1_147

def word687_1_149 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_148 word687_1_3

def word687_1_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 32)]

def word687_1_151 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_149 word687_1_150

def word687_1_152 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_151 word687_1_49

def word687_1_153 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_152 word687_1_49

def word687_1_154 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 22)) (some 78) ([62, 20]) (some (62, word687_1_52, 687, 23))

def word687_1_155 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_153 word687_1_154

def word687_1_156 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_155 word687_1_3

def word687_1_157 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(62, 66)]

def word687_1_158 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_156 word687_1_157

def word687_1_159 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_158 word687_1_49

def word687_1_160 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_159 word687_1_49

def word687_1_161 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 24)) (some 78) ([62, 20]) (some (62, word687_1_52, 687, 25))

def word687_1_162 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_160 word687_1_161

def word687_1_163 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_162 word687_1_3

def word687_1_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(28, 66)]

def word687_1_165 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_163 word687_1_164

def word687_1_166 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_165 word687_1_114

def word687_1_167 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_166 word687_1_116

def word687_1_168 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_167 word687_1_118

def word687_1_169 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_168 word687_1_120

def word687_1_170 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_169 word687_1_122

def word687_1_171 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_170 word687_1_70

def word687_1_172 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_171 word687_1_125

def word687_1_173 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_172 word687_1_75

def word687_1_174 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_173 word687_1_128

def word687_1_175 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_174 word687_1_80

def word687_1_176 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_175 word687_1_131

def word687_1_177 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_176 word687_1_85

def word687_1_178 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_177 word687_1_3

def word687_1_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 28 1#64)

def word687_1_180 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_179 word687_1_134

def word687_1_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 13#64)

def word687_1_182 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_180 word687_1_181

def word687_1_183 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_182 word687_1_181

def word687_1_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 26)) (some 685) ([62, 20]) (some (62, word687_1_52, 687, 27))

def word687_1_185 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_183 word687_1_184

def word687_1_186 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_185 word687_1_3

def word687_1_187 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 0#64)

def word687_1_188 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_186 word687_1_187

def word687_1_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 28)]

def word687_1_190 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_188 word687_1_189

def word687_1_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 20 1#64)

def word687_1_192 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_191 word687_1_3

def word687_1_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 1#64)

def word687_1_194 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_192 word687_1_193

def word687_1_195 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def word687_1_196 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_194 word687_1_195

def word687_1_197 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_187 word687_1_3

def word687_1_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 0#64)

def word687_1_199 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_197 word687_1_198

def word687_1_200 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 20 (Flapjack.WordRegImm.reg 52) word687_1_196 word687_1_199

def word687_1_201 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_190 word687_1_200

def word687_1_202 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_201 word687_1_3

def word687_1_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 14)]

def word687_1_204 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_202 word687_1_203

def word687_1_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 13#64)

def word687_1_206 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_204 word687_1_205

def word687_1_207 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_206 word687_1_205

def word687_1_208 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def word687_1_209 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 28)) (some 685) ([20, 52]) (some (20, word687_1_208, 687, 29))

def word687_1_210 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_207 word687_1_209

def word687_1_211 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_210 word687_1_3

def word687_1_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(52, 10)]

def word687_1_213 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_211 word687_1_212

def word687_1_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 36 416#64)

def word687_1_215 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_213 word687_1_214

def word687_1_216 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_215 word687_1_214

def word687_1_217 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def word687_1_218 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 30)) (some 78) ([52, 36]) (some (52, word687_1_217, 687, 31))

def word687_1_219 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_216 word687_1_218

def word687_1_220 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_219 word687_1_3

def word687_1_221 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 73 73 (Flapjack.WordRegImm.imm 5#64)))

def word687_1_222 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_68 word687_1_221

def word687_1_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 48)]

def word687_1_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 73 73 (Flapjack.WordRegImm.reg 74)))

def word687_1_225 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_223 word687_1_224

def word687_1_226 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_222 word687_1_225

def word687_1_227 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 73 0#64))

def word687_1_228 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_226 word687_1_227

def word687_1_229 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_220 word687_1_228

def word687_1_230 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 48)]

def word687_1_231 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 28)]

def word687_1_232 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 74 74 (Flapjack.WordRegImm.imm 5#64)))

def word687_1_233 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_231 word687_1_232

def word687_1_234 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_233 word687_1_224

def word687_1_235 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_230 word687_1_234

def word687_1_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 52 (Flapjack.WordLangAddr.addr 73 8#64))

def word687_1_237 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_235 word687_1_236

def word687_1_238 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_229 word687_1_237

def word687_1_239 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 73 16#64))

def word687_1_240 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_235 word687_1_239

def word687_1_241 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_238 word687_1_240

def word687_1_242 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 70 (Flapjack.WordLangAddr.addr 73 24#64))

def word687_1_243 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_235 word687_1_242

def word687_1_244 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_241 word687_1_243

def word687_1_245 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 20)]

def word687_1_246 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_244 word687_1_245

def word687_1_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 52)]

def word687_1_248 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_246 word687_1_247

def word687_1_249 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 36)]

def word687_1_250 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_248 word687_1_249

def word687_1_251 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(68, 70)]

def word687_1_252 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_250 word687_1_251

def word687_1_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 18

def word687_1_254 : WordLangProgHOL (BitVec 64) :=
.call (some (([8, 42, 26, 60]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 32)) (some 660) ([18, 50, 34, 68]) (some (18, word687_1_253, 687, 33))

def word687_1_255 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_252 word687_1_254

def word687_1_256 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_255 word687_1_3

def word687_1_257 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_256 word687_1_3

def word687_1_258 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 62)]

def word687_1_259 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 28)]

def word687_1_260 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_258 word687_1_259

def word687_1_261 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 1#64)

def word687_1_262 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_261 word687_1_3

def word687_1_263 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 1#64)

def word687_1_264 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_262 word687_1_263

def word687_1_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 62)]

def word687_1_266 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_265 word687_1_221

def word687_1_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 14)]

def word687_1_268 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_267 word687_1_224

def word687_1_269 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_266 word687_1_268

def word687_1_270 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 73 0#64))

def word687_1_271 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_269 word687_1_270

def word687_1_272 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_264 word687_1_271

def word687_1_273 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 62)]

def word687_1_274 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_273 word687_1_232

def word687_1_275 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_274 word687_1_224

def word687_1_276 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_87 word687_1_275

def word687_1_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 50 (Flapjack.WordLangAddr.addr 73 8#64))

def word687_1_278 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_276 word687_1_277

def word687_1_279 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_272 word687_1_278

def word687_1_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 73 16#64))

def word687_1_281 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_276 word687_1_280

def word687_1_282 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_279 word687_1_281

def word687_1_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 68 (Flapjack.WordLangAddr.addr 73 24#64))

def word687_1_284 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_276 word687_1_283

def word687_1_285 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_282 word687_1_284

def word687_1_286 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 18)]

def word687_1_287 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_285 word687_1_286

def word687_1_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 50)]

def word687_1_289 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_287 word687_1_288

def word687_1_290 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 34)]

def word687_1_291 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_289 word687_1_290

def word687_1_292 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 68)]

def word687_1_293 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_291 word687_1_292

def word687_1_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 8)]

def word687_1_295 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_293 word687_1_294

def word687_1_296 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 42)]

def word687_1_297 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_295 word687_1_296

def word687_1_298 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 26)]

def word687_1_299 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_297 word687_1_298

def word687_1_300 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 60)]

def word687_1_301 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_299 word687_1_300

def word687_1_302 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def word687_1_303 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 46, 30, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 34)) (some 657) ([22, 54, 38, 72, 6, 40, 24, 58]) (some (22, word687_1_302, 687, 35))

def word687_1_304 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_301 word687_1_303

def word687_1_305 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_304 word687_1_3

def word687_1_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 73 73 (Flapjack.WordRegImm.reg 74)))

def word687_1_307 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_231 word687_1_306

def word687_1_308 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_265 word687_1_307

def word687_1_309 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_308 word687_1_221

def word687_1_310 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 10)]

def word687_1_311 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 73 (Flapjack.WordRegImm.reg 74)))

def word687_1_312 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_310 word687_1_311

def word687_1_313 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_309 word687_1_312

def word687_1_314 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_305 word687_1_313

def word687_1_315 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 12)]

def word687_1_316 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_314 word687_1_315

def word687_1_317 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 46)]

def word687_1_318 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_316 word687_1_317

def word687_1_319 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 30)]

def word687_1_320 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_318 word687_1_319

def word687_1_321 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 64)]

def word687_1_322 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_320 word687_1_321

def word687_1_323 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 54)]

def word687_1_324 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_322 word687_1_323

def word687_1_325 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 22)]

def word687_1_326 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 73 0#64))

def word687_1_327 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_325 word687_1_326

def word687_1_328 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_324 word687_1_327

def word687_1_329 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 38)]

def word687_1_330 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_328 word687_1_329

def word687_1_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 73 8#64))

def word687_1_332 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_325 word687_1_331

def word687_1_333 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_330 word687_1_332

def word687_1_334 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 72)]

def word687_1_335 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_333 word687_1_334

def word687_1_336 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 73 16#64))

def word687_1_337 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_325 word687_1_336

def word687_1_338 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_335 word687_1_337

def word687_1_339 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 6)]

def word687_1_340 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_338 word687_1_339

def word687_1_341 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 40 (Flapjack.WordLangAddr.addr 73 24#64))

def word687_1_342 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_325 word687_1_341

def word687_1_343 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_340 word687_1_342

def word687_1_344 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(54, 14)]

def word687_1_345 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_343 word687_1_344

def word687_1_346 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(38, 48)]

def word687_1_347 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_345 word687_1_346

def word687_1_348 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(72, 12)]

def word687_1_349 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_347 word687_1_348

def word687_1_350 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 46)]

def word687_1_351 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_349 word687_1_350

def word687_1_352 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 30)]

def word687_1_353 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_351 word687_1_352

def word687_1_354 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 64)]

def word687_1_355 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_353 word687_1_354

def word687_1_356 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 58 73 (Flapjack.WordRegImm.reg 74)))

def word687_1_357 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_231 word687_1_356

def word687_1_358 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_265 word687_1_357

def word687_1_359 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_355 word687_1_358

def word687_1_360 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 28)]

def word687_1_361 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_359 word687_1_360

def word687_1_362 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 54

def word687_1_363 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 36)) (some 686) ([54, 38, 72, 6, 40, 24, 58, 16]) (some (54, word687_1_362, 687, 37))

def word687_1_364 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_361 word687_1_363

def word687_1_365 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_364 word687_1_3

def word687_1_366 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 14)]

def word687_1_367 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_365 word687_1_366

def word687_1_368 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 54 13#64)

def word687_1_369 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_367 word687_1_368

def word687_1_370 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_369 word687_1_368

def word687_1_371 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_370 word687_1_368

def word687_1_372 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 38)) (some 685) ([22, 54]) (some (22, word687_1_302, 687, 39))

def word687_1_373 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_371 word687_1_372

def word687_1_374 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_373 word687_1_3

def word687_1_375 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def word687_1_376 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_374 word687_1_375

def word687_1_377 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 50 0#64)

def word687_1_378 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_377 word687_1_3

def word687_1_379 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 0#64)

def word687_1_380 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_378 word687_1_379

def word687_1_381 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_380 word687_1_195

def word687_1_382 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLess) 50 (Flapjack.WordRegImm.reg 34) word687_1_376 word687_1_381

def word687_1_383 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_260 word687_1_382

def word687_1_384 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_383 word687_1_3

def word687_1_385 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) word687_1_384 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def word687_1_386 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_257 word687_1_385

def word687_1_387 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_386 word687_1_3

def word687_1_388 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 44)]

def word687_1_389 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_387 word687_1_388

def word687_1_390 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 32)]

def word687_1_391 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_389 word687_1_390

def word687_1_392 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 416#64)

def word687_1_393 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_391 word687_1_392

def word687_1_394 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_393 word687_1_392

def word687_1_395 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 50

def word687_1_396 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 40)) (some 77) ([50, 34, 68]) (some (50, word687_1_395, 687, 41))

def word687_1_397 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_394 word687_1_396

def word687_1_398 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_397 word687_1_3

def word687_1_399 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 18 0#64)

def word687_1_400 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_398 word687_1_399

def word687_1_401 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_400 word687_1_3

def word687_1_402 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(34, 18)]

def word687_1_403 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 68 13#64)

def word687_1_404 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_402 word687_1_403

def word687_1_405 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 1#64)

def word687_1_406 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_405 word687_1_3

def word687_1_407 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def word687_1_408 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_406 word687_1_407

def word687_1_409 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 18)]

def word687_1_410 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_409 word687_1_221

def word687_1_411 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_310 word687_1_224

def word687_1_412 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_410 word687_1_411

def word687_1_413 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 50 (Flapjack.WordLangAddr.addr 73 0#64))

def word687_1_414 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_412 word687_1_413

def word687_1_415 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_408 word687_1_414

def word687_1_416 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 10)]

def word687_1_417 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 18)]

def word687_1_418 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_417 word687_1_232

def word687_1_419 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_418 word687_1_224

def word687_1_420 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_416 word687_1_419

def word687_1_421 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 73 8#64))

def word687_1_422 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_420 word687_1_421

def word687_1_423 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_415 word687_1_422

def word687_1_424 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 68 (Flapjack.WordLangAddr.addr 73 16#64))

def word687_1_425 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_420 word687_1_424

def word687_1_426 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_423 word687_1_425

def word687_1_427 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 73 24#64))

def word687_1_428 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_420 word687_1_427

def word687_1_429 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_426 word687_1_428

def word687_1_430 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(30, 50)]

def word687_1_431 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_429 word687_1_430

def word687_1_432 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 34)]

def word687_1_433 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_431 word687_1_432

def word687_1_434 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 68)]

def word687_1_435 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_433 word687_1_434

def word687_1_436 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_435 word687_1_315

def word687_1_437 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def word687_1_438 : WordLangProgHOL (BitVec 64) :=
.call (some (([46]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          PUnit.unit
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 42)) (some 102) ([30, 64, 22, 54]) (some (30, word687_1_437, 687, 43))

def word687_1_439 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_436 word687_1_438

def word687_1_440 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_439 word687_1_3

def word687_1_441 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 46)]

def word687_1_442 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_440 word687_1_441

def word687_1_443 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 22 0#64)

def word687_1_444 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_442 word687_1_443

def word687_1_445 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 64 1#64)

def word687_1_446 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_445 word687_1_3

def word687_1_447 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 54 1#64)

def word687_1_448 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_446 word687_1_447

def word687_1_449 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(64, 44)]

def word687_1_450 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_448 word687_1_449

def word687_1_451 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(22, 66)]

def word687_1_452 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_450 word687_1_451

def word687_1_453 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_452 word687_1_288

def word687_1_454 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_453 word687_1_290

def word687_1_455 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_454 word687_1_292

def word687_1_456 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 12)]

def word687_1_457 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_455 word687_1_456

def word687_1_458 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 18)]

def word687_1_459 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_457 word687_1_458

def word687_1_460 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 73 12#64)

def word687_1_461 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 24 73 (Flapjack.WordRegImm.reg 74)))

def word687_1_462 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_417 word687_1_461

def word687_1_463 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_460 word687_1_462

def word687_1_464 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_459 word687_1_463

def word687_1_465 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 64

def word687_1_466 : WordLangProgHOL (BitVec 64) :=
.call (some (([30]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 44)) (some 686) ([64, 22, 54, 38, 72, 6, 40, 24]) (some (64, word687_1_465, 687, 45))

def word687_1_467 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_464 word687_1_466

def word687_1_468 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_467 word687_1_3

def word687_1_469 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 64 0#64)

def word687_1_470 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_469 word687_1_3

def word687_1_471 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 54 0#64)

def word687_1_472 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_470 word687_1_471

def word687_1_473 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 64 (Flapjack.WordRegImm.reg 22) word687_1_468 word687_1_472

def word687_1_474 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_444 word687_1_473

def word687_1_475 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_474 word687_1_3

def word687_1_476 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 30 73 (Flapjack.WordRegImm.imm 1#64)))

def word687_1_477 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_409 word687_1_476

def word687_1_478 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_475 word687_1_477

def word687_1_479 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 30)]

def word687_1_480 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_478 word687_1_479

def word687_1_481 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_480 word687_1_375

def word687_1_482 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 0#64)

def word687_1_483 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_482 word687_1_3

def word687_1_484 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def word687_1_485 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_483 word687_1_484

def word687_1_486 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_485 word687_1_195

def word687_1_487 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 34 (Flapjack.WordRegImm.reg 68) word687_1_481 word687_1_486

def word687_1_488 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_404 word687_1_487

def word687_1_489 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_488 word687_1_3

def word687_1_490 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) word687_1_489 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def word687_1_491 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_401 word687_1_490

def word687_1_492 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_491 word687_1_3

def word687_1_493 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 14)]

def word687_1_494 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_492 word687_1_493

def word687_1_495 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 48)]

def word687_1_496 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_494 word687_1_495

def word687_1_497 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(48, 50)]

def word687_1_498 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_496 word687_1_497

def word687_1_499 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 32)]

def word687_1_500 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_498 word687_1_499

def word687_1_501 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(32, 66)]

def word687_1_502 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_500 word687_1_501

def word687_1_503 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(66, 44)]

def word687_1_504 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_502 word687_1_503

def word687_1_505 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 50)]

def word687_1_506 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_504 word687_1_505

def word687_1_507 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_506 word687_1_375

def word687_1_508 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_507 word687_1_3

def word687_1_509 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) word687_1_508 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln)

def word687_1_510 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_178 word687_1_509

def word687_1_511 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_510 word687_1_3

def word687_1_512 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_511 word687_1_134

def word687_1_513 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_512 word687_1_181

def word687_1_514 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_513 word687_1_181

def word687_1_515 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 46)) (some 685) ([62, 20]) (some (62, word687_1_52, 687, 47))

def word687_1_516 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_514 word687_1_515

def word687_1_517 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_516 word687_1_3

def word687_1_518 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 28)]

def word687_1_519 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_517 word687_1_518

def word687_1_520 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 52 0#64)

def word687_1_521 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_519 word687_1_520

def word687_1_522 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 2)]

def word687_1_523 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_194 word687_1_522

def word687_1_524 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_523 word687_1_144

def word687_1_525 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_524 word687_1_144

def word687_1_526 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_525 word687_1_144

def word687_1_527 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 48)) (some 78) ([20, 52]) (some (20, word687_1_208, 687, 49))

def word687_1_528 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_526 word687_1_527

def word687_1_529 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_528 word687_1_3

def word687_1_530 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(20, 56)]

def word687_1_531 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_529 word687_1_530

def word687_1_532 : WordLangProgHOL (BitVec 64) :=
.call (some (([62]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word687_1_0, 687, 50)) (some 70) ([20]) (some (20, word687_1_208, 687, 51))

def word687_1_533 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_531 word687_1_532

def word687_1_534 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_533 word687_1_3

def word687_1_535 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 62 0#64)

def word687_1_536 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_534 word687_1_535

def word687_1_537 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [62]

def word687_1_538 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_536 word687_1_537

def word687_1_539 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 20 (Flapjack.WordRegImm.reg 52) word687_1_538 word687_1_0

def word687_1_540 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_539 word687_1_199

def word687_1_541 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_521 word687_1_540

def word687_1_542 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_541 word687_1_3

def word687_1_543 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 62 (Flapjack.WordLangAddr.addr 73 0#64))

def word687_1_544 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_230 word687_1_543

def word687_1_545 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_542 word687_1_544

def word687_1_546 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 73 8#64))

def word687_1_547 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_230 word687_1_546

def word687_1_548 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_545 word687_1_547

def word687_1_549 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 52 (Flapjack.WordLangAddr.addr 73 16#64))

def word687_1_550 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_230 word687_1_549

def word687_1_551 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_548 word687_1_550

def word687_1_552 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 73 24#64))

def word687_1_553 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_230 word687_1_552

def word687_1_554 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_551 word687_1_553

def word687_1_555 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 62)]

def word687_1_556 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_554 word687_1_555

def word687_1_557 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_556 word687_1_245

def word687_1_558 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_557 word687_1_247

def word687_1_559 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_558 word687_1_249

def word687_1_560 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 60

def word687_1_561 : WordLangProgHOL (BitVec 64) :=
.call (some (([70, 8, 42, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 52)) (some 660) ([60, 18, 50, 34]) (some (60, word687_1_560, 687, 53))

def word687_1_562 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_559 word687_1_561

def word687_1_563 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_562 word687_1_3

def word687_1_564 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 60 0#64)

def word687_1_565 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_563 word687_1_564

def word687_1_566 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_565 word687_1_3

def word687_1_567 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 60)]

def word687_1_568 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 34 12#64)

def word687_1_569 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_567 word687_1_568

def word687_1_570 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 60)]

def word687_1_571 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_570 word687_1_221

def word687_1_572 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 66)]

def word687_1_573 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_572 word687_1_224

def word687_1_574 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_571 word687_1_573

def word687_1_575 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_574 word687_1_270

def word687_1_576 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_264 word687_1_575

def word687_1_577 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(73, 66)]

def word687_1_578 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 60)]

def word687_1_579 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_578 word687_1_232

def word687_1_580 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_579 word687_1_224

def word687_1_581 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_577 word687_1_580

def word687_1_582 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_581 word687_1_277

def word687_1_583 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_576 word687_1_582

def word687_1_584 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_581 word687_1_280

def word687_1_585 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_583 word687_1_584

def word687_1_586 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_581 word687_1_283

def word687_1_587 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_585 word687_1_586

def word687_1_588 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_587 word687_1_286

def word687_1_589 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_588 word687_1_288

def word687_1_590 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_589 word687_1_290

def word687_1_591 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_590 word687_1_292

def word687_1_592 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 70)]

def word687_1_593 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_591 word687_1_592

def word687_1_594 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(40, 8)]

def word687_1_595 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_593 word687_1_594

def word687_1_596 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 42)]

def word687_1_597 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_595 word687_1_596

def word687_1_598 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(58, 26)]

def word687_1_599 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_597 word687_1_598

def word687_1_600 : WordLangProgHOL (BitVec 64) :=
.call (some (([12, 46, 30, 64]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      PUnit.unit
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), word687_1_0, 687, 54)) (some 657) ([22, 54, 38, 72, 6, 40, 24, 58]) (some (22, word687_1_302, 687, 55))

def word687_1_601 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_599 word687_1_600

def word687_1_602 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_601 word687_1_3

def word687_1_603 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(74, 2)]

def word687_1_604 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_603 word687_1_311

def word687_1_605 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_571 word687_1_604

def word687_1_606 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_602 word687_1_605

def word687_1_607 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_606 word687_1_315

def word687_1_608 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_607 word687_1_317

def word687_1_609 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_608 word687_1_319

def word687_1_610 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_609 word687_1_321

def word687_1_611 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_610 word687_1_323

def word687_1_612 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_611 word687_1_327

def word687_1_613 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_612 word687_1_329

def word687_1_614 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_613 word687_1_332

def word687_1_615 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_614 word687_1_334

def word687_1_616 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_615 word687_1_337

def word687_1_617 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_616 word687_1_339

def word687_1_618 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_617 word687_1_342

def word687_1_619 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 22 73 (Flapjack.WordRegImm.imm 1#64)))

def word687_1_620 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_570 word687_1_619

def word687_1_621 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_618 word687_1_620

def word687_1_622 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(60, 22)]

def word687_1_623 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_621 word687_1_622

def word687_1_624 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_623 word687_1_375

def word687_1_625 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 50 (Flapjack.WordRegImm.reg 34) word687_1_624 word687_1_381

def word687_1_626 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_569 word687_1_625

def word687_1_627 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_626 word687_1_3

def word687_1_628 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))
  PUnit.unit Flapjack.Spt.ln) word687_1_627 (Flapjack.Spt.bs
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
  PUnit.unit Flapjack.Spt.ln)

def word687_1_629 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_566 word687_1_628

def word687_1_630 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_629 word687_1_3

def word687_1_631 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(50, 56)]

def word687_1_632 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_630 word687_1_631

def word687_1_633 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), word687_1_0, 687, 56)) (some 70) ([50]) (some (50, word687_1_395, 687, 57))

def word687_1_634 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_632 word687_1_633

def word687_1_635 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_634 word687_1_3

def word687_1_636 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_635 word687_1_399

def word687_1_637 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18]

def word687_1_638 : WordLangProgHOL (BitVec 64) :=
.seq word687_1_636 word687_1_637

def pass687_1 : WordLangProgHOL (BitVec 64) :=
word687_1_638
theorem pass687_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass687_0) + 1) (pass687_0) = pass687_1 := by
  kernel_rfl
#print axioms pass687_1_eq
end InitECandidate.Proofs.WordStages
