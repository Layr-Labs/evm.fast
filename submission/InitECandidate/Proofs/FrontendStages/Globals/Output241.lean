import InitECandidate.Proofs.FrontendStages.Declarations.Data241
import InitECandidate.Proofs.FrontendStages.Globals.Context
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody241_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody241_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody241_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 120#64]))
  (Flapjack.Exp.const 0#64)) globalBody241_0 globalBody241_1

def globalBody241_3 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody241_4 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody241_3

def globalBody241_5 : Prog (BitVec 64) :=
.seq globalBody241_2 globalBody241_4

def globalBody241_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 120#64]),
    Flapjack.Exp.const 8#64]

def globalBody241_7 : Prog (BitVec 64) :=
.seq globalBody241_5 globalBody241_6

def globalBody241_8 : Prog (BitVec 64) :=
.seq globalBody241_7 globalBody241_0

def globalData241 : Decl (BitVec 64) := .function { name := "header_init", inline := false, exported := false, params := [], body := globalBody241_8, returnShape := (Flapjack.Shape.one) }
def globalOutput241 := Pancake.PanLang.declToHOL globalData241
end InitECandidate.Proofs.FrontendStages.Declarations
