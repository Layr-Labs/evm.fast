import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify670
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body686_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_init" []

def body686_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.const 12#64, Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body686_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body686_3 : Prog (BitVec 64) :=
.seq body686_1 body686_2

def body686_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body686_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.var Flapjack.VarKind.local "qi", Flapjack.Exp.var Flapjack.VarKind.local "pi"])
  (Flapjack.Exp.const 1#64)) body686_3 body686_4

def body686_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_twist"
  [Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.var Flapjack.VarKind.local "q2"]

def body686_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_cast"
  [Flapjack.Exp.var Flapjack.VarKind.local "P", Flapjack.Exp.var Flapjack.VarKind.local "p1"]

def body686_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn254_miller_raw"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fden",
    Flapjack.Exp.var Flapjack.VarKind.local "Q", Flapjack.Exp.var Flapjack.VarKind.local "P"]

def body686_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_inv"
  [Flapjack.Exp.var Flapjack.VarKind.local "fden", Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def body686_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnum", Flapjack.Exp.var Flapjack.VarKind.local "fnum",
    Flapjack.Exp.var Flapjack.VarKind.local "fden"]

def body686_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_pow_words"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "fnum",
    Flapjack.Exp.var Flapjack.VarKind.global "bn_expw", Flapjack.Exp.const 44#64]

def body686_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body686_13 : Prog (BitVec 64) :=
.seq body686_12 body686_2

def body686_14 : Prog (BitVec 64) :=
.seq body686_11 body686_13

def body686_15 : Prog (BitVec 64) :=
.seq body686_10 body686_14

def body686_16 : Prog (BitVec 64) :=
.seq body686_9 body686_15

def body686_17 : Prog (BitVec 64) :=
.seq body686_8 body686_16

def body686_18 : Prog (BitVec 64) :=
.seq body686_7 body686_17

def body686_19 : Prog (BitVec 64) :=
.seq body686_6 body686_18

def body686_20 : Prog (BitVec 64) :=
.decCall ("fden") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body686_19

def body686_21 : Prog (BitVec 64) :=
.decCall ("fnum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body686_20

def body686_22 : Prog (BitVec 64) :=
.decCall ("P") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body686_21

def body686_23 : Prog (BitVec 64) :=
.decCall ("Q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body686_22

def body686_24 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body686_23

def body686_25 : Prog (BitVec 64) :=
.seq body686_5 body686_24

def body686_26 : Prog (BitVec 64) :=
.decCall ("pi") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "p1"]) body686_25

def body686_27 : Prog (BitVec 64) :=
.decCall ("qi") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "q2"]) body686_26

def body686_28 : Prog (BitVec 64) :=
.seq body686_0 body686_27

def body686_29 : Prog (BitVec 64) :=
.seq body686_6 body686_7

def body686_30 : Prog (BitVec 64) :=
.seq body686_29 body686_8

def body686_31 : Prog (BitVec 64) :=
.seq body686_30 body686_9

def body686_32 : Prog (BitVec 64) :=
.seq body686_31 body686_10

def body686_33 : Prog (BitVec 64) :=
.seq body686_32 body686_11

def body686_34 : Prog (BitVec 64) :=
.seq body686_33 body686_12

def body686_35 : Prog (BitVec 64) :=
.seq body686_34 body686_2

def body686_36 : Prog (BitVec 64) :=
.decCall ("fden") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body686_35

def body686_37 : Prog (BitVec 64) :=
.decCall ("fnum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 384#64]) body686_36

def body686_38 : Prog (BitVec 64) :=
.decCall ("P") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body686_37

def body686_39 : Prog (BitVec 64) :=
.decCall ("Q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1152#64]) body686_38

def body686_40 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body686_39

def body686_41 : Prog (BitVec 64) :=
.seq body686_5 body686_40

def body686_42 : Prog (BitVec 64) :=
.decCall ("pi") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "p1"]) body686_41

def body686_43 : Prog (BitVec 64) :=
.decCall ("qi") (Flapjack.Shape.one) ("ecp_is_inf") ([Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "q2"]) body686_42

def body686_44 : Prog (BitVec 64) :=
.seq body686_0 body686_43

def originalData686 : Decl (BitVec 64) :=
.function { name := "bn254_pairing", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("q2", Flapjack.Shape.one), ("p1", Flapjack.Shape.one)], body := body686_28, returnShape := (Flapjack.Shape.one) }
def simplifiedData686 : Decl (BitVec 64) :=
.function { name := "bn254_pairing", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("q2", Flapjack.Shape.one), ("p1", Flapjack.Shape.one)], body := body686_44, returnShape := (Flapjack.Shape.one) }
def original686 := Pancake.PanLang.declToHOL originalData686
def simplified686 := Pancake.PanLang.declToHOL simplifiedData686
end InitECandidate.Proofs.FrontendStages.Declarations
