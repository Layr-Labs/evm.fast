import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data408
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody408_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 216#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody408_1 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) globalBody408_0

def globalBody408_2 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 232#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody408_3 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 28#64, Flapjack.Exp.const 64#64]) globalBody408_2

def globalBody408_4 : Prog (BitVec 64) :=
.seq globalBody408_1 globalBody408_3

def globalBody408_5 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 240#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody408_6 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 60#64, Flapjack.Exp.const 64#64]) globalBody408_5

def globalBody408_7 : Prog (BitVec 64) :=
.seq globalBody408_4 globalBody408_6

def globalBody408_8 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 248#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody408_9 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody408_8

def globalBody408_10 : Prog (BitVec 64) :=
.seq globalBody408_7 globalBody408_9

def globalBody408_11 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 224#64])
  (Flapjack.Exp.const 0#64)

def globalBody408_12 : Prog (BitVec 64) :=
.seq globalBody408_10 globalBody408_11

def globalBody408_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody408_14 : Prog (BitVec 64) :=
.seq globalBody408_12 globalBody408_13

def globalData408 : Decl (BitVec 64) :=
.function { name := "bal_init", inline := false, exported := false, params := [], body := globalBody408_14, returnShape := (Flapjack.Shape.one) }
def globalOutput408 := Pancake.PanLang.declToHOL globalData408
end InitECandidate.Proofs.FrontendStages.Declarations
