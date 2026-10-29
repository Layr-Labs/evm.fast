import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body7_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "heap_ptr" Flapjack.Exp.baseAddr

def body7_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "scratch_ptr" (Flapjack.Exp.const 2965299200#64)

def body7_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "frame_mem_ptr" (Flapjack.Exp.const 2952790016#64)

def body7_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body7_4 : Prog (BitVec 64) :=
.seq body7_2 body7_3

def body7_5 : Prog (BitVec 64) :=
.seq body7_1 body7_4

def body7_6 : Prog (BitVec 64) :=
.seq body7_0 body7_5

def body7_7 : Prog (BitVec 64) :=
.seq body7_0 body7_1

def body7_8 : Prog (BitVec 64) :=
.seq body7_7 body7_2

def body7_9 : Prog (BitVec 64) :=
.seq body7_8 body7_3

def originalData7 : Decl (BitVec 64) :=
.function { name := "mem_init", inline := false, exported := false, params := [], body := body7_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData7 : Decl (BitVec 64) :=
.function { name := "mem_init", inline := false, exported := false, params := [], body := body7_9, returnShape := (Flapjack.Shape.one) }
def original7 := Pancake.PanLang.declToHOL originalData7
def simplified7 := Pancake.PanLang.declToHOL simplifiedData7
end InitECandidate.Proofs.FrontendStages.Declarations
