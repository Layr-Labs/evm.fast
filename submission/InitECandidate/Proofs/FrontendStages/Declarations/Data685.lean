import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify669
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body685_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.const 1152#64]

def body685_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nQ", Flapjack.Exp.var Flapjack.VarKind.local "Q",
    Flapjack.Exp.const 1152#64]

def body685_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_neg"
  [Flapjack.Exp.const 12#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nQ", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.const 384#64]]

def body685_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "fnum"]

def body685_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def body685_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body685_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def body685_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fnum"]

def body685_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fnum",
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body685_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fden", Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def body685_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fden", Flapjack.Exp.var Flapjack.VarKind.local "fden",
    Flapjack.Exp.var Flapjack.VarKind.local "d"]

def body685_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_double"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R"]

def body685_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "Q",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def body685_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_add"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R",
    Flapjack.Exp.var Flapjack.VarKind.local "Q"]

def body685_14 : Prog (BitVec 64) :=
.seq body685_10 body685_13

def body685_15 : Prog (BitVec 64) :=
.seq body685_8 body685_14

def body685_16 : Prog (BitVec 64) :=
.seq body685_12 body685_15

def body685_17 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body685_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.const 11637723931993326632#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) body685_16 body685_17

def body685_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "nQ",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def body685_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_add"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R",
    Flapjack.Exp.var Flapjack.VarKind.local "nQ"]

def body685_21 : Prog (BitVec 64) :=
.seq body685_10 body685_20

def body685_22 : Prog (BitVec 64) :=
.seq body685_8 body685_21

def body685_23 : Prog (BitVec 64) :=
.seq body685_19 body685_22

def body685_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.const 290499802545784960#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) body685_23 body685_17

def body685_25 : Prog (BitVec 64) :=
.seq body685_18 body685_24

def body685_26 : Prog (BitVec 64) :=
.seq body685_11 body685_25

def body685_27 : Prog (BitVec 64) :=
.seq body685_10 body685_26

def body685_28 : Prog (BitVec 64) :=
.seq body685_9 body685_27

def body685_29 : Prog (BitVec 64) :=
.seq body685_8 body685_28

def body685_30 : Prog (BitVec 64) :=
.seq body685_7 body685_29

def body685_31 : Prog (BitVec 64) :=
.seq body685_6 body685_30

def body685_32 : Prog (BitVec 64) :=
.seq body685_5 body685_31

def body685_33 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body685_32

def body685_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "Q1", Flapjack.Exp.var Flapjack.VarKind.local "Q"]

def body685_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "Q1", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.const 384#64]]

def body685_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "Q1",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "Q",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]]]

def body685_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "nQ2", Flapjack.Exp.var Flapjack.VarKind.local "Q1"]

def body685_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nQ2", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "Q1", Flapjack.Exp.const 384#64]]

def body685_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_neg"
  [Flapjack.Exp.const 12#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nQ2", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nQ2", Flapjack.Exp.const 384#64]]

def body685_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nQ2",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "Q1",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]]]

def body685_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "Q1",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def body685_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_add"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R",
    Flapjack.Exp.var Flapjack.VarKind.local "Q1"]

def body685_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "nQ2",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def body685_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body685_45 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body685_46 : Prog (BitVec 64) :=
.seq body685_44 body685_45

def body685_47 : Prog (BitVec 64) :=
.seq body685_10 body685_46

def body685_48 : Prog (BitVec 64) :=
.seq body685_8 body685_47

def body685_49 : Prog (BitVec 64) :=
.seq body685_43 body685_48

def body685_50 : Prog (BitVec 64) :=
.seq body685_42 body685_49

def body685_51 : Prog (BitVec 64) :=
.seq body685_10 body685_50

def body685_52 : Prog (BitVec 64) :=
.seq body685_8 body685_51

def body685_53 : Prog (BitVec 64) :=
.seq body685_41 body685_52

def body685_54 : Prog (BitVec 64) :=
.seq body685_40 body685_53

def body685_55 : Prog (BitVec 64) :=
.seq body685_39 body685_54

def body685_56 : Prog (BitVec 64) :=
.seq body685_38 body685_55

def body685_57 : Prog (BitVec 64) :=
.seq body685_37 body685_56

def body685_58 : Prog (BitVec 64) :=
.seq body685_36 body685_57

def body685_59 : Prog (BitVec 64) :=
.seq body685_35 body685_58

def body685_60 : Prog (BitVec 64) :=
.seq body685_34 body685_59

def body685_61 : Prog (BitVec 64) :=
.seq body685_33 body685_60

def body685_62 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) body685_61

def body685_63 : Prog (BitVec 64) :=
.seq body685_4 body685_62

def body685_64 : Prog (BitVec 64) :=
.seq body685_3 body685_63

def body685_65 : Prog (BitVec 64) :=
.seq body685_2 body685_64

def body685_66 : Prog (BitVec 64) :=
.seq body685_1 body685_65

def body685_67 : Prog (BitVec 64) :=
.seq body685_0 body685_66

def body685_68 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body685_67

def body685_69 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body685_68

def body685_70 : Prog (BitVec 64) :=
.decCall ("nQ2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body685_69

def body685_71 : Prog (BitVec 64) :=
.decCall ("Q1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body685_70

def body685_72 : Prog (BitVec 64) :=
.decCall ("nQ") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body685_71

def body685_73 : Prog (BitVec 64) :=
.decCall ("R") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body685_72

def body685_74 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body685_73

def body685_75 : Prog (BitVec 64) :=
.seq body685_0 body685_1

def body685_76 : Prog (BitVec 64) :=
.seq body685_75 body685_2

def body685_77 : Prog (BitVec 64) :=
.seq body685_76 body685_3

def body685_78 : Prog (BitVec 64) :=
.seq body685_77 body685_4

def body685_79 : Prog (BitVec 64) :=
.seq body685_5 body685_6

def body685_80 : Prog (BitVec 64) :=
.seq body685_79 body685_7

def body685_81 : Prog (BitVec 64) :=
.seq body685_80 body685_8

def body685_82 : Prog (BitVec 64) :=
.seq body685_81 body685_9

def body685_83 : Prog (BitVec 64) :=
.seq body685_82 body685_10

def body685_84 : Prog (BitVec 64) :=
.seq body685_83 body685_11

def body685_85 : Prog (BitVec 64) :=
.seq body685_12 body685_8

def body685_86 : Prog (BitVec 64) :=
.seq body685_85 body685_10

def body685_87 : Prog (BitVec 64) :=
.seq body685_86 body685_13

def body685_88 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.const 11637723931993326632#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) body685_87 body685_17

def body685_89 : Prog (BitVec 64) :=
.seq body685_84 body685_88

def body685_90 : Prog (BitVec 64) :=
.seq body685_19 body685_8

def body685_91 : Prog (BitVec 64) :=
.seq body685_90 body685_10

def body685_92 : Prog (BitVec 64) :=
.seq body685_91 body685_20

def body685_93 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.const 290499802545784960#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) body685_92 body685_17

def body685_94 : Prog (BitVec 64) :=
.seq body685_89 body685_93

def body685_95 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body685_94

def body685_96 : Prog (BitVec 64) :=
.seq body685_95 body685_34

def body685_97 : Prog (BitVec 64) :=
.seq body685_96 body685_35

def body685_98 : Prog (BitVec 64) :=
.seq body685_97 body685_36

def body685_99 : Prog (BitVec 64) :=
.seq body685_98 body685_37

def body685_100 : Prog (BitVec 64) :=
.seq body685_99 body685_38

def body685_101 : Prog (BitVec 64) :=
.seq body685_100 body685_39

def body685_102 : Prog (BitVec 64) :=
.seq body685_101 body685_40

def body685_103 : Prog (BitVec 64) :=
.seq body685_102 body685_41

def body685_104 : Prog (BitVec 64) :=
.seq body685_103 body685_8

def body685_105 : Prog (BitVec 64) :=
.seq body685_104 body685_10

def body685_106 : Prog (BitVec 64) :=
.seq body685_105 body685_42

def body685_107 : Prog (BitVec 64) :=
.seq body685_106 body685_43

def body685_108 : Prog (BitVec 64) :=
.seq body685_107 body685_8

def body685_109 : Prog (BitVec 64) :=
.seq body685_108 body685_10

def body685_110 : Prog (BitVec 64) :=
.seq body685_109 body685_44

def body685_111 : Prog (BitVec 64) :=
.seq body685_110 body685_45

def body685_112 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) body685_111

def body685_113 : Prog (BitVec 64) :=
.seq body685_78 body685_112

def body685_114 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body685_113

def body685_115 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body685_114

def body685_116 : Prog (BitVec 64) :=
.decCall ("nQ2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body685_115

def body685_117 : Prog (BitVec 64) :=
.decCall ("Q1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body685_116

def body685_118 : Prog (BitVec 64) :=
.decCall ("nQ") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body685_117

def body685_119 : Prog (BitVec 64) :=
.decCall ("R") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body685_118

def body685_120 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body685_119

def originalData685 : Decl (BitVec 64) :=
.function { name := "bn254_miller_raw", inline := false, exported := false, params := [("fnum", Flapjack.Shape.one), ("fden", Flapjack.Shape.one), ("Q", Flapjack.Shape.one), ("P", Flapjack.Shape.one)], body := body685_74, returnShape := (Flapjack.Shape.one) }
def simplifiedData685 : Decl (BitVec 64) :=
.function { name := "bn254_miller_raw", inline := false, exported := false, params := [("fnum", Flapjack.Shape.one), ("fden", Flapjack.Shape.one), ("Q", Flapjack.Shape.one), ("P", Flapjack.Shape.one)], body := body685_120, returnShape := (Flapjack.Shape.one) }
def original685 := Pancake.PanLang.declToHOL originalData685
def simplified685 := Pancake.PanLang.declToHOL simplifiedData685
end InitECandidate.Proofs.FrontendStages.Declarations
