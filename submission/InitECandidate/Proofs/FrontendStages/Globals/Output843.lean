import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data843
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate827
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody843_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 128#64]))

def globalBody843_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody843_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "has") (Flapjack.Exp.const 0#64)) globalBody843_0 globalBody843_1

def globalBody843_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def globalBody843_4 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("ws_storage_root_of") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody843_3

def globalBody843_5 : Prog (BitVec 64) :=
.seq globalBody843_2 globalBody843_4

def globalBody843_6 : Prog (BitVec 64) :=
.decCall ("has") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "cache", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody843_5

def globalData843 : Decl (BitVec 64) :=
.function { name := "cache_get_root", inline := false, exported := false, params := [("cache", Flapjack.Shape.one), ("addr", Flapjack.Shape.one)], body := globalBody843_6, returnShape := (Flapjack.Shape.one) }
def globalOutput843 := Pancake.PanLang.declToHOL globalData843
end InitECandidate.Proofs.FrontendStages.Declarations
