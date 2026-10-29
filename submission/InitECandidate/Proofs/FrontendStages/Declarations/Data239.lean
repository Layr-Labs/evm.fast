import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify223
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body239_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body239_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body239_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.global "hdr_zero8") (Flapjack.Exp.const 0#64)) body239_0 body239_1

def body239_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "hdr_zero8"), none)) "alloc" [Flapjack.Exp.const 8#64]

def body239_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.global "hdr_zero8", Flapjack.Exp.const 8#64]

def body239_5 : Prog (BitVec 64) :=
.seq body239_4 body239_0

def body239_6 : Prog (BitVec 64) :=
.seq body239_3 body239_5

def body239_7 : Prog (BitVec 64) :=
.seq body239_2 body239_6

def body239_8 : Prog (BitVec 64) :=
.seq body239_2 body239_3

def body239_9 : Prog (BitVec 64) :=
.seq body239_8 body239_4

def body239_10 : Prog (BitVec 64) :=
.seq body239_9 body239_0

def originalData239 : Decl (BitVec 64) :=
.function { name := "header_init", inline := false, exported := false, params := [], body := body239_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData239 : Decl (BitVec 64) :=
.function { name := "header_init", inline := false, exported := false, params := [], body := body239_10, returnShape := (Flapjack.Shape.one) }
def original239 := Pancake.PanLang.declToHOL originalData239
def simplified239 := Pancake.PanLang.declToHOL simplifiedData239
end InitECandidate.Proofs.FrontendStages.Declarations
