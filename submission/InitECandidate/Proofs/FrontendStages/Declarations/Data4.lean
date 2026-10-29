import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body4_0 : Prog (BitVec 64) :=
Flapjack.Prog.shMemStore Flapjack.OpSize.op8
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 33#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code")

def body4_1 : Prog (BitVec 64) :=
Flapjack.Prog.shMemStore Flapjack.OpSize.opW
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "heap_ptr")

def body4_2 : Prog (BitVec 64) :=
Flapjack.Prog.shMemStore Flapjack.OpSize.opW
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "journal_n")

def body4_3 : Prog (BitVec 64) :=
Flapjack.Prog.extCall "trap" Flapjack.Exp.baseAddr (Flapjack.Exp.var Flapjack.VarKind.local "code")
  Flapjack.Exp.baseAddr (Flapjack.Exp.const 0#64)

def body4_4 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TrapErr" (Flapjack.Exp.var Flapjack.VarKind.local "code")

def body4_5 : Prog (BitVec 64) :=
.seq body4_3 body4_4

def body4_6 : Prog (BitVec 64) :=
.seq body4_2 body4_5

def body4_7 : Prog (BitVec 64) :=
.seq body4_1 body4_6

def body4_8 : Prog (BitVec 64) :=
.seq body4_0 body4_7

def body4_9 : Prog (BitVec 64) :=
.seq body4_0 body4_1

def body4_10 : Prog (BitVec 64) :=
.seq body4_9 body4_2

def body4_11 : Prog (BitVec 64) :=
.seq body4_10 body4_3

def body4_12 : Prog (BitVec 64) :=
.seq body4_11 body4_4

def originalData4 : Decl (BitVec 64) :=
.function { name := "trap_with", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := body4_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData4 : Decl (BitVec 64) :=
.function { name := "trap_with", inline := false, exported := false, params := [("code", Flapjack.Shape.one)], body := body4_12, returnShape := (Flapjack.Shape.one) }
def original4 := Pancake.PanLang.declToHOL originalData4
def simplified4 := Pancake.PanLang.declToHOL simplifiedData4
end InitECandidate.Proofs.FrontendStages.Declarations
