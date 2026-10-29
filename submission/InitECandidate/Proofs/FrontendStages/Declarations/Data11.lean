import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body11_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 6#64]

def body11_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body11_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.global "scratch_ptr", Flapjack.Exp.var Flapjack.VarKind.local "p"])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body11_0 body11_1

def body11_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.global "scratch_ptr")
  (Flapjack.Exp.var Flapjack.VarKind.local "q")) body11_0 body11_1

def body11_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "frame_mem_ptr" (Flapjack.Exp.var Flapjack.VarKind.local "q")

def body11_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "p")

def body11_6 : Prog (BitVec 64) :=
.seq body11_4 body11_5

def body11_7 : Prog (BitVec 64) :=
.seq body11_3 body11_6

def body11_8 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n",
        Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body11_7

def body11_9 : Prog (BitVec 64) :=
.seq body11_2 body11_8

def body11_10 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "frame_mem_ptr") body11_9

def body11_11 : Prog (BitVec 64) :=
.seq body11_3 body11_4

def body11_12 : Prog (BitVec 64) :=
.seq body11_11 body11_5

def body11_13 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n",
        Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body11_12

def body11_14 : Prog (BitVec 64) :=
.seq body11_2 body11_13

def body11_15 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "frame_mem_ptr") body11_14

def originalData11 : Decl (BitVec 64) :=
.function { name := "frame_mem_alloc", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body11_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData11 : Decl (BitVec 64) :=
.function { name := "frame_mem_alloc", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body11_15, returnShape := (Flapjack.Shape.one) }
def original11 := Pancake.PanLang.declToHOL originalData11
def simplified11 := Pancake.PanLang.declToHOL simplifiedData11
end InitECandidate.Proofs.FrontendStages.Declarations
