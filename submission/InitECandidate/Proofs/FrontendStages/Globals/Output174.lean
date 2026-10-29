import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data174
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate158
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody174_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_infinity" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody174_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody174_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_double" [Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody174_3 : Prog (BitVec 64) :=
.seq globalBody174_1 globalBody174_2

def globalBody174_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_add_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "ax",
    Flapjack.Exp.var Flapjack.VarKind.local "ay"]

def globalBody174_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody174_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit") (Flapjack.Exp.const 1#64)) globalBody174_4 globalBody174_5

def globalBody174_7 : Prog (BitVec 64) :=
.decCall ("bit") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody174_6

def globalBody174_8 : Prog (BitVec 64) :=
.seq globalBody174_3 globalBody174_7

def globalBody174_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody174_8

def globalBody174_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody174_11 : Prog (BitVec 64) :=
.seq globalBody174_9 globalBody174_10

def globalBody174_12 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "len") globalBody174_11

def globalBody174_13 : Prog (BitVec 64) :=
.decCall ("len") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "k"]) globalBody174_12

def globalBody174_14 : Prog (BitVec 64) :=
.seq globalBody174_0 globalBody174_13

def globalData174 : Decl (BitVec 64) :=
.function { name := "ec_mul", inline := false, exported := false, params := [("out", Flapjack.Shape.one),
  ("k", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ax", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("ay", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody174_14, returnShape := (Flapjack.Shape.one) }
def globalOutput174 := Pancake.PanLang.declToHOL globalData174
end InitECandidate.Proofs.FrontendStages.Declarations
