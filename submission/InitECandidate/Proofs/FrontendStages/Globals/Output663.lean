import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data663
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate645
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody663_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fq12_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody663_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody663_2 : Prog (BitVec 64) :=
.seq globalBody663_0 globalBody663_1

def globalBody663_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody663_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "fld") (Flapjack.Exp.const 12#64)) globalBody663_2 globalBody663_3

def globalBody663_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "d",
    Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody663_6 : Prog (BitVec 64) :=
.seq globalBody663_4 globalBody663_5

def globalBody663_7 : Prog (BitVec 64) :=
.seq globalBody663_6 globalBody663_1

def globalData663 : Decl (BitVec 64) :=
.function { name := "fe_sqr", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("d", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := globalBody663_7, returnShape := (Flapjack.Shape.one) }
def globalOutput663 := Pancake.PanLang.declToHOL globalData663
end InitECandidate.Proofs.FrontendStages.Declarations
