import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data412
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate391
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody412_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 216#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody412_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) globalBody412_0

def globalBody412_2 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 232#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody412_3 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 28#64, Flapjack.Exp.const 64#64]) globalBody412_2

def globalBody412_4 : Prog (BitVec 64) :=
.seq globalBody412_1 globalBody412_3

def globalBody412_5 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 240#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody412_6 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 60#64, Flapjack.Exp.const 64#64]) globalBody412_5

def globalBody412_7 : Prog (BitVec 64) :=
.seq globalBody412_4 globalBody412_6

def globalBody412_8 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 248#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody412_9 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody412_8

def globalBody412_10 : Prog (BitVec 64) :=
.seq globalBody412_7 globalBody412_9

def globalBody412_11 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 224#64])
  (Flapjack.Exp.const 0#64)

def globalBody412_12 : Prog (BitVec 64) :=
.seq globalBody412_10 globalBody412_11

def globalBody412_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody412_14 : Prog (BitVec 64) :=
.seq globalBody412_12 globalBody412_13

def globalData412 : Decl (BitVec 64) :=
.function { name := "bal_init", inline := false, exported := false, params := [], body := globalBody412_14, returnShape := (Flapjack.Shape.one) }
def globalOutput412 := Pancake.PanLang.declToHOL globalData412
end InitECandidate.Proofs.FrontendStages.Declarations
