import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data289
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate273
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody289_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "cached")

def globalBody289_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody289_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cached") (Flapjack.Exp.const 0#64)) globalBody289_0 globalBody289_1

def globalBody289_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 13#64]

def globalBody289_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 0#64)) globalBody289_3 globalBody289_1

def globalBody289_5 : Prog (BitVec 64) :=
.seq globalBody289_2 globalBody289_4

def globalBody289_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody289_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "h")

def globalBody289_8 : Prog (BitVec 64) :=
.seq globalBody289_6 globalBody289_7

def globalBody289_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "h")

def globalBody289_10 : Prog (BitVec 64) :=
.seq globalBody289_8 globalBody289_9

def globalBody289_11 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody289_10

def globalBody289_12 : Prog (BitVec 64) :=
.seq globalBody289_5 globalBody289_11

def globalBody289_13 : Prog (BitVec 64) :=
.dec ("cached") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 24#64])) globalBody289_12

def globalData289 : Decl (BitVec 64) :=
.function { name := "node_hash_cached", inline := false, exported := false, params := [("node", Flapjack.Shape.one)], body := globalBody289_13, returnShape := (Flapjack.Shape.one) }
def globalOutput289 := Pancake.PanLang.declToHOL globalData289
end InitECandidate.Proofs.FrontendStages.Declarations
