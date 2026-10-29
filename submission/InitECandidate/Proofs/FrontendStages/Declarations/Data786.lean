import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify770
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body786_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.var Flapjack.VarKind.local "q"]

def body786_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 96#64]]

def body786_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_set_one"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.const 192#64]]

def body786_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "f"]

def body786_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body786_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "f",
    Flapjack.Exp.var Flapjack.VarKind.local "f"]

def body786_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_doubling_step"
  [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.var Flapjack.VarKind.local "co"]

def body786_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_ell"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "co",
    Flapjack.Exp.var Flapjack.VarKind.local "px", Flapjack.Exp.var Flapjack.VarKind.local "py"]

def body786_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_addition_step"
  [Flapjack.Exp.var Flapjack.VarKind.local "rp", Flapjack.Exp.var Flapjack.VarKind.local "q",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "co"]

def body786_9 : Prog (BitVec 64) :=
.seq body786_8 body786_7

def body786_10 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body786_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "x")
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) body786_9 body786_10

def body786_12 : Prog (BitVec 64) :=
.seq body786_7 body786_11

def body786_13 : Prog (BitVec 64) :=
.seq body786_6 body786_12

def body786_14 : Prog (BitVec 64) :=
.seq body786_5 body786_13

def body786_15 : Prog (BitVec 64) :=
.seq body786_4 body786_14

def body786_16 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body786_15

def body786_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "f", Flapjack.Exp.var Flapjack.VarKind.local "f"]

def body786_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body786_19 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body786_20 : Prog (BitVec 64) :=
.seq body786_18 body786_19

def body786_21 : Prog (BitVec 64) :=
.seq body786_17 body786_20

def body786_22 : Prog (BitVec 64) :=
.seq body786_16 body786_21

def body786_23 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 63#64) body786_22

def body786_24 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1376#64])) body786_23

def body786_25 : Prog (BitVec 64) :=
.seq body786_3 body786_24

def body786_26 : Prog (BitVec 64) :=
.seq body786_2 body786_25

def body786_27 : Prog (BitVec 64) :=
.seq body786_1 body786_26

def body786_28 : Prog (BitVec 64) :=
.seq body786_0 body786_27

def body786_29 : Prog (BitVec 64) :=
.decCall ("co") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 3#64]]) body786_28

def body786_30 : Prog (BitVec 64) :=
.decCall ("rp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body786_29

def body786_31 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body786_30

def body786_32 : Prog (BitVec 64) :=
.seq body786_0 body786_1

def body786_33 : Prog (BitVec 64) :=
.seq body786_32 body786_2

def body786_34 : Prog (BitVec 64) :=
.seq body786_33 body786_3

def body786_35 : Prog (BitVec 64) :=
.seq body786_4 body786_5

def body786_36 : Prog (BitVec 64) :=
.seq body786_35 body786_6

def body786_37 : Prog (BitVec 64) :=
.seq body786_36 body786_7

def body786_38 : Prog (BitVec 64) :=
.seq body786_37 body786_11

def body786_39 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) body786_38

def body786_40 : Prog (BitVec 64) :=
.seq body786_39 body786_17

def body786_41 : Prog (BitVec 64) :=
.seq body786_40 body786_18

def body786_42 : Prog (BitVec 64) :=
.seq body786_41 body786_19

def body786_43 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 63#64) body786_42

def body786_44 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1376#64])) body786_43

def body786_45 : Prog (BitVec 64) :=
.seq body786_34 body786_44

def body786_46 : Prog (BitVec 64) :=
.decCall ("co") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 3#64]]) body786_45

def body786_47 : Prog (BitVec 64) :=
.decCall ("rp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body786_46

def body786_48 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body786_47

def originalData786 : Decl (BitVec 64) :=
.function { name := "pair_miller_loop", inline := false, exported := false, params := [("f", Flapjack.Shape.one),
  ("px",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("py",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("q", Flapjack.Shape.one)], body := body786_31, returnShape := (Flapjack.Shape.one) }
def simplifiedData786 : Decl (BitVec 64) :=
.function { name := "pair_miller_loop", inline := false, exported := false, params := [("f", Flapjack.Shape.one),
  ("px",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("py",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("q", Flapjack.Shape.one)], body := body786_48, returnShape := (Flapjack.Shape.one) }
def original786 := Pancake.PanLang.declToHOL originalData786
def simplified786 := Pancake.PanLang.declToHOL simplifiedData786
end InitECandidate.Proofs.FrontendStages.Declarations
