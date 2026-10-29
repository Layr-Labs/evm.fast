import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data401
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate385
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody401_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "dst", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "s")]

def globalBody401_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody401_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))
  (Flapjack.Exp.const 0#64)) globalBody401_0 globalBody401_1

def globalBody401_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody401_4 : Prog (BitVec 64) :=
.seq globalBody401_2 globalBody401_3

def globalBody401_5 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_item") ([Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i"]) globalBody401_4

def globalBody401_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")) globalBody401_5

def globalBody401_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody401_8 : Prog (BitVec 64) :=
.seq globalBody401_6 globalBody401_7

def globalBody401_9 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody401_8

def globalBody401_10 : Prog (BitVec 64) :=
.dec ("cap") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.const 24#64])) globalBody401_9

def globalData401 : Decl (BitVec 64) :=
.function { name := "htab_union_into", inline := false, exported := false, params := [("dst", Flapjack.Shape.one), ("src", Flapjack.Shape.one)], body := globalBody401_10, returnShape := (Flapjack.Shape.one) }
def globalOutput401 := Pancake.PanLang.declToHOL globalData401
end InitECandidate.Proofs.FrontendStages.Declarations
