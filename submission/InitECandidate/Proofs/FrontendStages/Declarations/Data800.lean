import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify784
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body800_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body800_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body800_2 : Prog (BitVec 64) :=
.seq body800_0 body800_1

def body800_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body800_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)) body800_2 body800_3

def body800_5 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "d")

def body800_6 : Prog (BitVec 64) :=
.seq body800_5 body800_1

def body800_7 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "v"]) body800_6

def body800_8 : Prog (BitVec 64) :=
.seq body800_4 body800_7

def body800_9 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body800_8

def body800_10 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1344#64])) body800_9

def body800_11 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64]) body800_10

def originalData800 : Decl (BitVec 64) :=
.function { name := "kzg_neg_scalar", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body800_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData800 : Decl (BitVec 64) :=
.function { name := "kzg_neg_scalar", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body800_11, returnShape := (Flapjack.Shape.one) }
def original800 := Pancake.PanLang.declToHOL originalData800
def simplified800 := Pancake.PanLang.declToHOL simplifiedData800
end InitECandidate.Proofs.FrontendStages.Declarations
