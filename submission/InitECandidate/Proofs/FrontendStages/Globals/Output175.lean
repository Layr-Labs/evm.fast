import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data175
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate159
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody175_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_infinity" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody175_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody175_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody175_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 0#64)) globalBody175_1 globalBody175_2

def globalBody175_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "sum", Flapjack.Exp.var Flapjack.VarKind.local "ax",
    Flapjack.Exp.var Flapjack.VarKind.local "ay"]

def globalBody175_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "sum", Flapjack.Exp.var Flapjack.VarKind.local "bx",
    Flapjack.Exp.var Flapjack.VarKind.local "by"]

def globalBody175_6 : Prog (BitVec 64) :=
.seq globalBody175_4 globalBody175_5

def globalBody175_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_to_affine" [Flapjack.Exp.var Flapjack.VarKind.local "sum"]

def globalBody175_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sum_inf") (Flapjack.Exp.const 0#64)) globalBody175_7 globalBody175_2

def globalBody175_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody175_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_double" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody175_11 : Prog (BitVec 64) :=
.seq globalBody175_9 globalBody175_10

def globalBody175_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "sx",
    Flapjack.Exp.var Flapjack.VarKind.local "sy"]

def globalBody175_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sum_inf") (Flapjack.Exp.const 0#64)) globalBody175_12 globalBody175_2

def globalBody175_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "ax",
    Flapjack.Exp.var Flapjack.VarKind.local "ay"]

def globalBody175_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit2") (Flapjack.Exp.const 1#64)) globalBody175_13 globalBody175_14

def globalBody175_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "bx",
    Flapjack.Exp.var Flapjack.VarKind.local "by"]

def globalBody175_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit2") (Flapjack.Exp.const 1#64)) globalBody175_16 globalBody175_2

def globalBody175_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit1") (Flapjack.Exp.const 1#64)) globalBody175_15 globalBody175_17

def globalBody175_19 : Prog (BitVec 64) :=
.decCall ("bit2") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "k2", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody175_18

def globalBody175_20 : Prog (BitVec 64) :=
.decCall ("bit1") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "k1", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody175_19

def globalBody175_21 : Prog (BitVec 64) :=
.seq globalBody175_11 globalBody175_20

def globalBody175_22 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody175_21

def globalBody175_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody175_24 : Prog (BitVec 64) :=
.seq globalBody175_22 globalBody175_23

def globalBody175_25 : Prog (BitVec 64) :=
.seq globalBody175_24 globalBody175_1

def globalBody175_26 : Prog (BitVec 64) :=
.dec ("sy") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "sum", Flapjack.Exp.const 32#64])) globalBody175_25

def globalBody175_27 : Prog (BitVec 64) :=
.dec ("sx") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "sum")) globalBody175_26

def globalBody175_28 : Prog (BitVec 64) :=
.seq globalBody175_8 globalBody175_27

def globalBody175_29 : Prog (BitVec 64) :=
.decCall ("sum_inf") (Flapjack.Shape.one) ("ec_is_infinity") ([Flapjack.Exp.var Flapjack.VarKind.local "sum"]) globalBody175_28

def globalBody175_30 : Prog (BitVec 64) :=
.seq globalBody175_6 globalBody175_29

def globalBody175_31 : Prog (BitVec 64) :=
.decCall ("sum") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody175_30

def globalBody175_32 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody175_31

def globalBody175_33 : Prog (BitVec 64) :=
.seq globalBody175_3 globalBody175_32

def globalBody175_34 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.one) ("max") ([Flapjack.Exp.var Flapjack.VarKind.local "len1", Flapjack.Exp.var Flapjack.VarKind.local "len2"]) globalBody175_33

def globalBody175_35 : Prog (BitVec 64) :=
.decCall ("len2") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k2"]) globalBody175_34

def globalBody175_36 : Prog (BitVec 64) :=
.decCall ("len1") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k1"]) globalBody175_35

def globalBody175_37 : Prog (BitVec 64) :=
.seq globalBody175_0 globalBody175_36

def globalData175 : Decl (BitVec 64) :=
.function { name := "ec_mul2", inline := false, exported := false, params := [("out", Flapjack.Shape.one),
  ("k1", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ax", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ay", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("k2", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("bx", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("by", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody175_37, returnShape := (Flapjack.Shape.one) }
def globalOutput175 := Pancake.PanLang.declToHOL globalData175
end InitECandidate.Proofs.FrontendStages.Declarations
