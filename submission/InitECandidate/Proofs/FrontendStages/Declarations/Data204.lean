import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify188
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body204_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 30#64]

def body204_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body204_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))
  (Flapjack.Exp.const 0#64)) body204_0 body204_1

def body204_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ssz_fail" [Flapjack.Exp.const 31#64]

def body204_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "lim")
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))) body204_3 body204_1

def body204_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "qr"))

def body204_6 : Prog (BitVec 64) :=
.seq body204_4 body204_5

def body204_7 : Prog (BitVec 64) :=
.seq body204_2 body204_6

def body204_8 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "sz"]) body204_7

def body204_9 : Prog (BitVec 64) :=
.seq body204_2 body204_4

def body204_10 : Prog (BitVec 64) :=
.seq body204_9 body204_5

def body204_11 : Prog (BitVec 64) :=
.decCall ("qr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("udivmod") ([Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.var Flapjack.VarKind.local "sz"]) body204_10

def originalData204 : Decl (BitVec 64) :=
.function { name := "ssz_fixed_list_count", inline := false, exported := false, params := [("len", Flapjack.Shape.one), ("sz", Flapjack.Shape.one), ("lim", Flapjack.Shape.one)], body := body204_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData204 : Decl (BitVec 64) :=
.function { name := "ssz_fixed_list_count", inline := false, exported := false, params := [("len", Flapjack.Shape.one), ("sz", Flapjack.Shape.one), ("lim", Flapjack.Shape.one)], body := body204_11, returnShape := (Flapjack.Shape.one) }
def original204 := Pancake.PanLang.declToHOL originalData204
def simplified204 := Pancake.PanLang.declToHOL simplifiedData204
end InitECandidate.Proofs.FrontendStages.Declarations
