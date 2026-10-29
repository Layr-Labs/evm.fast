import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify676
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body692_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_init" []

def body692_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "anum"]

def body692_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "aden"]

def body692_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body692_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 2#64)

def body692_5 : Prog (BitVec 64) :=
.seq body692_3 body692_4

def body692_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body692_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e1") (Flapjack.Exp.const 0#64)) body692_5 body692_6

def body692_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e2") (Flapjack.Exp.const 0#64)) body692_5 body692_6

def body692_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_mul"
  [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "g1",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4891460686036598785#64, Flapjack.Exp.const 2896914383306846353#64,
        Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]

def body692_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i1") (Flapjack.Exp.const 0#64)) body692_5 body692_6

def body692_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_mul"
  [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "g2",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4891460686036598785#64, Flapjack.Exp.const 2896914383306846353#64,
        Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]

def body692_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i2") (Flapjack.Exp.const 0#64)) body692_5 body692_6

def body692_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_twist"
  [Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.var Flapjack.VarKind.local "g2"]

def body692_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_cast"
  [Flapjack.Exp.var Flapjack.VarKind.local "P", Flapjack.Exp.var Flapjack.VarKind.local "g1"]

def body692_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_miller_raw"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fden",
    Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.var Flapjack.VarKind.local "P"]

def body692_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "anum", Flapjack.Exp.var Flapjack.VarKind.local "anum",
    Flapjack.Exp.var Flapjack.VarKind.local "fnum"]

def body692_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "aden", Flapjack.Exp.var Flapjack.VarKind.local "aden",
    Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def body692_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nontrivial" (Flapjack.Exp.const 1#64)

def body692_19 : Prog (BitVec 64) :=
.seq body692_17 body692_18

def body692_20 : Prog (BitVec 64) :=
.seq body692_16 body692_19

def body692_21 : Prog (BitVec 64) :=
.seq body692_15 body692_20

def body692_22 : Prog (BitVec 64) :=
.seq body692_14 body692_21

def body692_23 : Prog (BitVec 64) :=
.seq body692_13 body692_22

def body692_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "pinf", Flapjack.Exp.var Flapjack.VarKind.local "qinf"])
  (Flapjack.Exp.const 0#64)) body692_23 body692_6

def body692_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body692_26 : Prog (BitVec 64) :=
.seq body692_24 body692_25

def body692_27 : Prog (BitVec 64) :=
.decCall ("qinf") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "g2"]) body692_26

def body692_28 : Prog (BitVec 64) :=
.decCall ("pinf") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "g1"]) body692_27

def body692_29 : Prog (BitVec 64) :=
.seq body692_12 body692_28

def body692_30 : Prog (BitVec 64) :=
.decCall ("i2") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "t2"]) body692_29

def body692_31 : Prog (BitVec 64) :=
.seq body692_11 body692_30

def body692_32 : Prog (BitVec 64) :=
.seq body692_10 body692_31

def body692_33 : Prog (BitVec 64) :=
.decCall ("i1") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "t1"]) body692_32

def body692_34 : Prog (BitVec 64) :=
.seq body692_9 body692_33

def body692_35 : Prog (BitVec 64) :=
.seq body692_8 body692_34

def body692_36 : Prog (BitVec 64) :=
.decCall ("e2") (Flapjack.Shape.one) ("bn254_parse_g2") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "chunk", Flapjack.Exp.const 64#64],
  Flapjack.Exp.var Flapjack.VarKind.local "g2"]) body692_35

def body692_37 : Prog (BitVec 64) :=
.seq body692_7 body692_36

def body692_38 : Prog (BitVec 64) :=
.decCall ("e1") (Flapjack.Shape.one) ("bn254_parse_g1") ([Flapjack.Exp.var Flapjack.VarKind.local "chunk", Flapjack.Exp.var Flapjack.VarKind.local "g1"]) body692_37

def body692_39 : Prog (BitVec 64) :=
.dec ("chunk") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pairs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 192#64]]) body692_38

def body692_40 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n_pairs")) body692_39

def body692_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_inv"
  [Flapjack.Exp.var Flapjack.VarKind.local "aden", Flapjack.Exp.var Flapjack.VarKind.local "aden"]

def body692_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "anum", Flapjack.Exp.var Flapjack.VarKind.local "anum",
    Flapjack.Exp.var Flapjack.VarKind.local "aden"]

def body692_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_pow_words"
  [Flapjack.Exp.var Flapjack.VarKind.local "res", Flapjack.Exp.var Flapjack.VarKind.local "anum",
    Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 44#64]

def body692_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.const 384#64]

def body692_45 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "fnum")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def body692_46 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "memeq"
  [Flapjack.Exp.var Flapjack.VarKind.local "res", Flapjack.Exp.var Flapjack.VarKind.local "fnum",
    Flapjack.Exp.const 384#64]

def body692_47 : Prog (BitVec 64) :=
.seq body692_45 body692_46

def body692_48 : Prog (BitVec 64) :=
.seq body692_44 body692_47

def body692_49 : Prog (BitVec 64) :=
.seq body692_43 body692_48

def body692_50 : Prog (BitVec 64) :=
.seq body692_42 body692_49

def body692_51 : Prog (BitVec 64) :=
.seq body692_41 body692_50

def body692_52 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nontrivial") (Flapjack.Exp.const 1#64)) body692_51 body692_6

def body692_53 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ok")

def body692_54 : Prog (BitVec 64) :=
.seq body692_3 body692_53

def body692_55 : Prog (BitVec 64) :=
.seq body692_52 body692_54

def body692_56 : Prog (BitVec 64) :=
.dec ("ok") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body692_55

def body692_57 : Prog (BitVec 64) :=
.seq body692_40 body692_56

def body692_58 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body692_57

def body692_59 : Prog (BitVec 64) :=
.dec ("nontrivial") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body692_58

def body692_60 : Prog (BitVec 64) :=
.seq body692_2 body692_59

def body692_61 : Prog (BitVec 64) :=
.seq body692_1 body692_60

def body692_62 : Prog (BitVec 64) :=
.decCall ("res") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_61

def body692_63 : Prog (BitVec 64) :=
.decCall ("aden") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_62

def body692_64 : Prog (BitVec 64) :=
.decCall ("anum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_63

def body692_65 : Prog (BitVec 64) :=
.decCall ("fden") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_64

def body692_66 : Prog (BitVec 64) :=
.decCall ("fnum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_65

def body692_67 : Prog (BitVec 64) :=
.decCall ("P") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body692_66

def body692_68 : Prog (BitVec 64) :=
.decCall ("Q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body692_67

def body692_69 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) body692_68

def body692_70 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body692_69

def body692_71 : Prog (BitVec 64) :=
.decCall ("g2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) body692_70

def body692_72 : Prog (BitVec 64) :=
.decCall ("g1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body692_71

def body692_73 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body692_72

def body692_74 : Prog (BitVec 64) :=
.seq body692_0 body692_73

def body692_75 : Prog (BitVec 64) :=
.seq body692_1 body692_2

def body692_76 : Prog (BitVec 64) :=
.seq body692_8 body692_9

def body692_77 : Prog (BitVec 64) :=
.seq body692_10 body692_11

def body692_78 : Prog (BitVec 64) :=
.seq body692_13 body692_14

def body692_79 : Prog (BitVec 64) :=
.seq body692_78 body692_15

def body692_80 : Prog (BitVec 64) :=
.seq body692_79 body692_16

def body692_81 : Prog (BitVec 64) :=
.seq body692_80 body692_17

def body692_82 : Prog (BitVec 64) :=
.seq body692_81 body692_18

def body692_83 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "pinf", Flapjack.Exp.var Flapjack.VarKind.local "qinf"])
  (Flapjack.Exp.const 0#64)) body692_82 body692_6

def body692_84 : Prog (BitVec 64) :=
.seq body692_83 body692_25

def body692_85 : Prog (BitVec 64) :=
.decCall ("qinf") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "g2"]) body692_84

def body692_86 : Prog (BitVec 64) :=
.decCall ("pinf") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "g1"]) body692_85

def body692_87 : Prog (BitVec 64) :=
.seq body692_12 body692_86

def body692_88 : Prog (BitVec 64) :=
.decCall ("i2") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "t2"]) body692_87

def body692_89 : Prog (BitVec 64) :=
.seq body692_77 body692_88

def body692_90 : Prog (BitVec 64) :=
.decCall ("i1") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "t1"]) body692_89

def body692_91 : Prog (BitVec 64) :=
.seq body692_76 body692_90

def body692_92 : Prog (BitVec 64) :=
.decCall ("e2") (Flapjack.Shape.one) ("bn254_parse_g2") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "chunk", Flapjack.Exp.const 64#64],
  Flapjack.Exp.var Flapjack.VarKind.local "g2"]) body692_91

def body692_93 : Prog (BitVec 64) :=
.seq body692_7 body692_92

def body692_94 : Prog (BitVec 64) :=
.decCall ("e1") (Flapjack.Shape.one) ("bn254_parse_g1") ([Flapjack.Exp.var Flapjack.VarKind.local "chunk", Flapjack.Exp.var Flapjack.VarKind.local "g1"]) body692_93

def body692_95 : Prog (BitVec 64) :=
.dec ("chunk") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pairs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 192#64]]) body692_94

def body692_96 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n_pairs")) body692_95

def body692_97 : Prog (BitVec 64) :=
.seq body692_41 body692_42

def body692_98 : Prog (BitVec 64) :=
.seq body692_97 body692_43

def body692_99 : Prog (BitVec 64) :=
.seq body692_98 body692_44

def body692_100 : Prog (BitVec 64) :=
.seq body692_99 body692_45

def body692_101 : Prog (BitVec 64) :=
.seq body692_100 body692_46

def body692_102 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nontrivial") (Flapjack.Exp.const 1#64)) body692_101 body692_6

def body692_103 : Prog (BitVec 64) :=
.seq body692_102 body692_3

def body692_104 : Prog (BitVec 64) :=
.seq body692_103 body692_53

def body692_105 : Prog (BitVec 64) :=
.dec ("ok") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body692_104

def body692_106 : Prog (BitVec 64) :=
.seq body692_96 body692_105

def body692_107 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body692_106

def body692_108 : Prog (BitVec 64) :=
.dec ("nontrivial") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body692_107

def body692_109 : Prog (BitVec 64) :=
.seq body692_75 body692_108

def body692_110 : Prog (BitVec 64) :=
.decCall ("res") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_109

def body692_111 : Prog (BitVec 64) :=
.decCall ("aden") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_110

def body692_112 : Prog (BitVec 64) :=
.decCall ("anum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_111

def body692_113 : Prog (BitVec 64) :=
.decCall ("fden") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_112

def body692_114 : Prog (BitVec 64) :=
.decCall ("fnum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body692_113

def body692_115 : Prog (BitVec 64) :=
.decCall ("P") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body692_114

def body692_116 : Prog (BitVec 64) :=
.decCall ("Q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body692_115

def body692_117 : Prog (BitVec 64) :=
.decCall ("t2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) body692_116

def body692_118 : Prog (BitVec 64) :=
.decCall ("t1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body692_117

def body692_119 : Prog (BitVec 64) :=
.decCall ("g2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 192#64]) body692_118

def body692_120 : Prog (BitVec 64) :=
.decCall ("g1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) body692_119

def body692_121 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body692_120

def body692_122 : Prog (BitVec 64) :=
.seq body692_0 body692_121

def originalData692 : Decl (BitVec 64) :=
.function { name := "bn254_pairing_check", inline := false, exported := false, params := [("pairs", Flapjack.Shape.one), ("n_pairs", Flapjack.Shape.one)], body := body692_74, returnShape := (Flapjack.Shape.one) }
def simplifiedData692 : Decl (BitVec 64) :=
.function { name := "bn254_pairing_check", inline := false, exported := false, params := [("pairs", Flapjack.Shape.one), ("n_pairs", Flapjack.Shape.one)], body := body692_122, returnShape := (Flapjack.Shape.one) }
def original692 := Pancake.PanLang.declToHOL originalData692
def simplified692 := Pancake.PanLang.declToHOL simplifiedData692
end InitECandidate.Proofs.FrontendStages.Declarations
