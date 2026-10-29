import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data642
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate626
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody642_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "p256_set_infinity" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody642_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody642_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "p256_ec_double" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody642_3 : Prog (BitVec 64) :=
.seq globalBody642_1 globalBody642_2

def globalBody642_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "p256_ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "ax",
    Flapjack.Exp.var Flapjack.VarKind.local "ay"]

def globalBody642_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody642_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit1") (Flapjack.Exp.const 1#64)) globalBody642_4 globalBody642_5

def globalBody642_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "p256_ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "bx",
    Flapjack.Exp.var Flapjack.VarKind.local "by"]

def globalBody642_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit2") (Flapjack.Exp.const 1#64)) globalBody642_7 globalBody642_5

def globalBody642_9 : Prog (BitVec 64) :=
.decCall ("bit2") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "k2", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody642_8

def globalBody642_10 : Prog (BitVec 64) :=
.seq globalBody642_6 globalBody642_9

def globalBody642_11 : Prog (BitVec 64) :=
.decCall ("bit1") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "k1", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody642_10

def globalBody642_12 : Prog (BitVec 64) :=
.seq globalBody642_3 globalBody642_11

def globalBody642_13 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody642_12

def globalBody642_14 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody642_15 : Prog (BitVec 64) :=
.seq globalBody642_13 globalBody642_14

def globalBody642_16 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "len1", Flapjack.Exp.var Flapjack.VarKind.local "len2"]) globalBody642_15

def globalBody642_17 : Prog (BitVec 64) :=
.decCall ("len2") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k2"]) globalBody642_16

def globalBody642_18 : Prog (BitVec 64) :=
.decCall ("len1") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k1"]) globalBody642_17

def globalBody642_19 : Prog (BitVec 64) :=
.seq globalBody642_0 globalBody642_18

def globalData642 : Decl (BitVec 64) :=
.function { name := "p256_ec_mul2", inline := false, exported := false, params := [("out", Flapjack.Shape.one),
  ("k1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ax", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ay", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("k2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("bx", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("by", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody642_19, returnShape := (Flapjack.Shape.one) }
def globalOutput642 := Pancake.PanLang.declToHOL globalData642
end InitECandidate.Proofs.FrontendStages.Declarations
