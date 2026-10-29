import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify740
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body756_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body756_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body756_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body756_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc",
    Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body756_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body756_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "started") (Flapjack.Exp.const 1#64)) body756_3 body756_4

def body756_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc",
    Flapjack.Exp.var Flapjack.VarKind.local "base"]

def body756_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "started" (Flapjack.Exp.const 1#64)

def body756_8 : Prog (BitVec 64) :=
.seq body756_6 body756_7

def body756_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x")
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) body756_8 body756_4

def body756_10 : Prog (BitVec 64) :=
.seq body756_5 body756_9

def body756_11 : Prog (BitVec 64) :=
.seq body756_2 body756_10

def body756_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body756_11

def body756_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body756_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body756_15 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body756_16 : Prog (BitVec 64) :=
.seq body756_14 body756_15

def body756_17 : Prog (BitVec 64) :=
.seq body756_13 body756_16

def body756_18 : Prog (BitVec 64) :=
.seq body756_12 body756_17

def body756_19 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) body756_18

def body756_20 : Prog (BitVec 64) :=
.dec ("started") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body756_19

def body756_21 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1376#64])) body756_20

def body756_22 : Prog (BitVec 64) :=
.seq body756_1 body756_21

def body756_23 : Prog (BitVec 64) :=
.seq body756_0 body756_22

def body756_24 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body756_23

def body756_25 : Prog (BitVec 64) :=
.decCall ("base") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body756_24

def body756_26 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body756_25

def body756_27 : Prog (BitVec 64) :=
.seq body756_0 body756_1

def body756_28 : Prog (BitVec 64) :=
.seq body756_2 body756_5

def body756_29 : Prog (BitVec 64) :=
.seq body756_28 body756_9

def body756_30 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body756_29

def body756_31 : Prog (BitVec 64) :=
.seq body756_30 body756_13

def body756_32 : Prog (BitVec 64) :=
.seq body756_31 body756_14

def body756_33 : Prog (BitVec 64) :=
.seq body756_32 body756_15

def body756_34 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 64#64) body756_33

def body756_35 : Prog (BitVec 64) :=
.dec ("started") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body756_34

def body756_36 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1376#64])) body756_35

def body756_37 : Prog (BitVec 64) :=
.seq body756_27 body756_36

def body756_38 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body756_37

def body756_39 : Prog (BitVec 64) :=
.decCall ("base") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body756_38

def body756_40 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body756_39

def originalData756 : Decl (BitVec 64) :=
.function { name := "fp12_pow_absx", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body756_26, returnShape := (Flapjack.Shape.one) }
def simplifiedData756 : Decl (BitVec 64) :=
.function { name := "fp12_pow_absx", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := body756_40, returnShape := (Flapjack.Shape.one) }
def original756 := Pancake.PanLang.declToHOL originalData756
def simplified756 := Pancake.PanLang.declToHOL simplifiedData756
end InitECandidate.Proofs.FrontendStages.Declarations
