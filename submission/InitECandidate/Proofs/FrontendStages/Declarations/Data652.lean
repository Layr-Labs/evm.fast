import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify636
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body652_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body652_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body652_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)) body652_0 body652_1

def body652_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_sub"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
        Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64],
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body652_4 : Prog (BitVec 64) :=
.seq body652_2 body652_3

def body652_5 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body652_4

def originalData652 : Decl (BitVec 64) :=
.function { name := "fq_neg", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body652_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData652 : Decl (BitVec 64) :=
.function { name := "fq_neg", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body652_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original652 := Pancake.PanLang.declToHOL originalData652
def simplified652 := Pancake.PanLang.declToHOL simplifiedData652
end InitECandidate.Proofs.FrontendStages.Declarations
