import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data114
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate94
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody114_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "total"])

def globalBody114_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "count"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "count", Flapjack.Exp.const 1#64])

def globalBody114_2 : Prog (BitVec 64) :=
.seq globalBody114_0 globalBody114_1

def globalBody114_3 : Prog (BitVec 64) :=
.decCall ("total") (Flapjack.Shape.one) ("rlp_item_total") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "off"]]) globalBody114_2

def globalBody114_4 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "off")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) globalBody114_3

def globalBody114_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "count")

def globalBody114_6 : Prog (BitVec 64) :=
.seq globalBody114_4 globalBody114_5

def globalBody114_7 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody114_6

def globalBody114_8 : Prog (BitVec 64) :=
.dec ("count") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody114_7

def globalData114 : Decl (BitVec 64) :=
.function { name := "rlp_list_count", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody114_8, returnShape := (Flapjack.Shape.one) }
def globalOutput114 := Pancake.PanLang.declToHOL globalData114
end InitECandidate.Proofs.FrontendStages.Declarations
