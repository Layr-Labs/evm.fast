import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify410
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body426_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body426_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body426_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body426_0 body426_1

def body426_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bal_list_remove_idx"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"),
          Flapjack.Exp.var Flapjack.VarKind.local "which"]),
    Flapjack.Exp.var Flapjack.VarKind.local "esz", Flapjack.Exp.var Flapjack.VarKind.local "idx"]

def body426_4 : Prog (BitVec 64) :=
.seq body426_3 body426_0

def body426_5 : Prog (BitVec 64) :=
.seq body426_2 body426_4

def body426_6 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_accounts", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body426_5

def body426_7 : Prog (BitVec 64) :=
.seq body426_2 body426_3

def body426_8 : Prog (BitVec 64) :=
.seq body426_7 body426_0

def body426_9 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_accounts", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body426_8

def originalData426 : Decl (BitVec 64) :=
.function { name := "bal_remove_change", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("which", Flapjack.Shape.one), ("esz", Flapjack.Shape.one), ("idx", Flapjack.Shape.one)], body := body426_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData426 : Decl (BitVec 64) :=
.function { name := "bal_remove_change", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("which", Flapjack.Shape.one), ("esz", Flapjack.Shape.one), ("idx", Flapjack.Shape.one)], body := body426_9, returnShape := (Flapjack.Shape.one) }
def original426 := Pancake.PanLang.declToHOL originalData426
def simplified426 := Pancake.PanLang.declToHOL simplifiedData426
end InitECandidate.Proofs.FrontendStages.Declarations
