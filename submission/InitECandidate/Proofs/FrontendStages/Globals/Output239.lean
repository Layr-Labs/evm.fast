import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data239
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate220
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody239_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody239_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody239_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 120#64]))
  (Flapjack.Exp.const 0#64)) globalBody239_0 globalBody239_1

def globalBody239_3 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody239_4 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody239_3

def globalBody239_5 : Prog (BitVec 64) :=
.seq globalBody239_2 globalBody239_4

def globalBody239_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 120#64]),
    Flapjack.Exp.const 8#64]

def globalBody239_7 : Prog (BitVec 64) :=
.seq globalBody239_5 globalBody239_6

def globalBody239_8 : Prog (BitVec 64) :=
.seq globalBody239_7 globalBody239_0

def globalData239 : Decl (BitVec 64) :=
.function { name := "header_init", inline := false, exported := false, params := [], body := globalBody239_8, returnShape := (Flapjack.Shape.one) }
def globalOutput239 := Pancake.PanLang.declToHOL globalData239
end InitECandidate.Proofs.FrontendStages.Declarations
