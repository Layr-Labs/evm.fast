import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data292
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate276
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody292_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 128#64]),
    Flapjack.Exp.const 32#64]

def globalBody292_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody292_2 : Prog (BitVec 64) :=
.seq globalBody292_0 globalBody292_1

def globalBody292_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody292_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "root") (Flapjack.Exp.const 0#64)) globalBody292_2 globalBody292_3

def globalBody292_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 32#64]

def globalBody292_6 : Prog (BitVec 64) :=
.seq globalBody292_5 globalBody292_1

def globalBody292_7 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("node_hash") ([Flapjack.Exp.var Flapjack.VarKind.local "root"]) globalBody292_6

def globalBody292_8 : Prog (BitVec 64) :=
.seq globalBody292_4 globalBody292_7

def globalBody292_9 : Prog (BitVec 64) :=
.dec ("root") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])) globalBody292_8

def globalData292 : Decl (BitVec 64) :=
.function { name := "mpt_root", inline := false, exported := false, params := [("m", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody292_9, returnShape := (Flapjack.Shape.one) }
def globalOutput292 := Pancake.PanLang.declToHOL globalData292
end InitECandidate.Proofs.FrontendStages.Declarations
