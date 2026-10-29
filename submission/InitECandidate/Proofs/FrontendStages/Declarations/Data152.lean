import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify136
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body152_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body152_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body152_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)) body152_0 body152_1

def body152_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_sub"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.const 18446744069414583343#64, Flapjack.Exp.const 18446744073709551615#64,
        Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744073709551615#64],
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body152_4 : Prog (BitVec 64) :=
.seq body152_2 body152_3

def body152_5 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body152_4

def originalData152 : Decl (BitVec 64) :=
.function { name := "fp_neg", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body152_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData152 : Decl (BitVec 64) :=
.function { name := "fp_neg", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body152_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original152 := Pancake.PanLang.declToHOL originalData152
def simplified152 := Pancake.PanLang.declToHOL simplifiedData152
end InitECandidate.Proofs.FrontendStages.Declarations
