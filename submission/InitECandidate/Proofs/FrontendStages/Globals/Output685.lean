import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data685
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate669
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody685_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.const 1152#64]

def globalBody685_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "nQ", Flapjack.Exp.var Flapjack.VarKind.local "Q",
    Flapjack.Exp.const 1152#64]

def globalBody685_2 : Prog (BitVec 64) :=
.seq globalBody685_0 globalBody685_1

def globalBody685_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_neg"
  [Flapjack.Exp.const 12#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nQ", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.const 384#64]]

def globalBody685_4 : Prog (BitVec 64) :=
.seq globalBody685_2 globalBody685_3

def globalBody685_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "fnum"]

def globalBody685_6 : Prog (BitVec 64) :=
.seq globalBody685_4 globalBody685_5

def globalBody685_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def globalBody685_8 : Prog (BitVec 64) :=
.seq globalBody685_6 globalBody685_7

def globalBody685_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody685_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def globalBody685_11 : Prog (BitVec 64) :=
.seq globalBody685_9 globalBody685_10

def globalBody685_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fnum"]

def globalBody685_13 : Prog (BitVec 64) :=
.seq globalBody685_11 globalBody685_12

def globalBody685_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fnum",
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody685_15 : Prog (BitVec 64) :=
.seq globalBody685_13 globalBody685_14

def globalBody685_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fden", Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def globalBody685_17 : Prog (BitVec 64) :=
.seq globalBody685_15 globalBody685_16

def globalBody685_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fden", Flapjack.Exp.var Flapjack.VarKind.local "fden",
    Flapjack.Exp.var Flapjack.VarKind.local "d"]

def globalBody685_19 : Prog (BitVec 64) :=
.seq globalBody685_17 globalBody685_18

def globalBody685_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_double"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R"]

def globalBody685_21 : Prog (BitVec 64) :=
.seq globalBody685_19 globalBody685_20

def globalBody685_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "Q",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def globalBody685_23 : Prog (BitVec 64) :=
.seq globalBody685_22 globalBody685_14

def globalBody685_24 : Prog (BitVec 64) :=
.seq globalBody685_23 globalBody685_18

def globalBody685_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_add"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R",
    Flapjack.Exp.var Flapjack.VarKind.local "Q"]

def globalBody685_26 : Prog (BitVec 64) :=
.seq globalBody685_24 globalBody685_25

def globalBody685_27 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody685_28 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.const 11637723931993326632#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) globalBody685_26 globalBody685_27

def globalBody685_29 : Prog (BitVec 64) :=
.seq globalBody685_21 globalBody685_28

def globalBody685_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "nQ",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def globalBody685_31 : Prog (BitVec 64) :=
.seq globalBody685_30 globalBody685_14

def globalBody685_32 : Prog (BitVec 64) :=
.seq globalBody685_31 globalBody685_18

def globalBody685_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_add"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R",
    Flapjack.Exp.var Flapjack.VarKind.local "nQ"]

def globalBody685_34 : Prog (BitVec 64) :=
.seq globalBody685_32 globalBody685_33

def globalBody685_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.const 290499802545784960#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) globalBody685_34 globalBody685_27

def globalBody685_36 : Prog (BitVec 64) :=
.seq globalBody685_29 globalBody685_35

def globalBody685_37 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody685_36

def globalBody685_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "Q1", Flapjack.Exp.var Flapjack.VarKind.local "Q"]

def globalBody685_39 : Prog (BitVec 64) :=
.seq globalBody685_37 globalBody685_38

def globalBody685_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "Q1", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.const 384#64]]

def globalBody685_41 : Prog (BitVec 64) :=
.seq globalBody685_39 globalBody685_40

def globalBody685_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "Q1",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "Q",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]]]

def globalBody685_43 : Prog (BitVec 64) :=
.seq globalBody685_41 globalBody685_42

def globalBody685_44 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "nQ2", Flapjack.Exp.var Flapjack.VarKind.local "Q1"]

def globalBody685_45 : Prog (BitVec 64) :=
.seq globalBody685_43 globalBody685_44

def globalBody685_46 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nQ2", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "Q1", Flapjack.Exp.const 384#64]]

def globalBody685_47 : Prog (BitVec 64) :=
.seq globalBody685_45 globalBody685_46

def globalBody685_48 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_neg"
  [Flapjack.Exp.const 12#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nQ2", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nQ2", Flapjack.Exp.const 384#64]]

def globalBody685_49 : Prog (BitVec 64) :=
.seq globalBody685_47 globalBody685_48

def globalBody685_50 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_frob"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nQ2",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "Q1",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.const 384#64]]]

def globalBody685_51 : Prog (BitVec 64) :=
.seq globalBody685_49 globalBody685_50

def globalBody685_52 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "Q1",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def globalBody685_53 : Prog (BitVec 64) :=
.seq globalBody685_51 globalBody685_52

def globalBody685_54 : Prog (BitVec 64) :=
.seq globalBody685_53 globalBody685_14

def globalBody685_55 : Prog (BitVec 64) :=
.seq globalBody685_54 globalBody685_18

def globalBody685_56 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_add"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "R",
    Flapjack.Exp.var Flapjack.VarKind.local "Q1"]

def globalBody685_57 : Prog (BitVec 64) :=
.seq globalBody685_55 globalBody685_56

def globalBody685_58 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_linefunc"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "R", Flapjack.Exp.var Flapjack.VarKind.local "nQ2",
    Flapjack.Exp.var Flapjack.VarKind.local "P"]

def globalBody685_59 : Prog (BitVec 64) :=
.seq globalBody685_57 globalBody685_58

def globalBody685_60 : Prog (BitVec 64) :=
.seq globalBody685_59 globalBody685_14

def globalBody685_61 : Prog (BitVec 64) :=
.seq globalBody685_60 globalBody685_18

def globalBody685_62 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody685_63 : Prog (BitVec 64) :=
.seq globalBody685_61 globalBody685_62

def globalBody685_64 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody685_65 : Prog (BitVec 64) :=
.seq globalBody685_63 globalBody685_64

def globalBody685_66 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) globalBody685_65

def globalBody685_67 : Prog (BitVec 64) :=
.seq globalBody685_8 globalBody685_66

def globalBody685_68 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) globalBody685_67

def globalBody685_69 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) globalBody685_68

def globalBody685_70 : Prog (BitVec 64) :=
.decCall ("nQ2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) globalBody685_69

def globalBody685_71 : Prog (BitVec 64) :=
.decCall ("Q1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) globalBody685_70

def globalBody685_72 : Prog (BitVec 64) :=
.decCall ("nQ") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) globalBody685_71

def globalBody685_73 : Prog (BitVec 64) :=
.decCall ("R") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) globalBody685_72

def globalBody685_74 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody685_73

def globalData685 : Decl (BitVec 64) :=
.function { name := "bn254_miller_raw", inline := false, exported := false, params := [("fnum", Flapjack.Shape.one), ("fden", Flapjack.Shape.one), ("Q", Flapjack.Shape.one), ("P", Flapjack.Shape.one)], body := globalBody685_74, returnShape := (Flapjack.Shape.one) }
def globalOutput685 := Pancake.PanLang.declToHOL globalData685
end InitECandidate.Proofs.FrontendStages.Declarations
