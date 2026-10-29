import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data113
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate93
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody113_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_validate_items"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p",
        Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "h")],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "h")]

def globalBody113_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody113_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "h"))
  (Flapjack.Exp.const 0#64)) globalBody113_0 globalBody113_1

def globalBody113_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "h"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "h")])

def globalBody113_4 : Prog (BitVec 64) :=
.seq globalBody113_2 globalBody113_3

def globalBody113_5 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item_header") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) globalBody113_4

def globalData113 : Decl (BitVec 64) :=
.function { name := "rlp_item_total", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody113_5, returnShape := (Flapjack.Shape.one) }
def globalOutput113 := Pancake.PanLang.declToHOL globalData113
end InitECandidate.Proofs.FrontendStages.Declarations
