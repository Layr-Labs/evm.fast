import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body14_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 7#64]

def body14_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body14_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.global "frame_mem_ptr"])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body14_0 body14_1

def body14_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "q")
  (Flapjack.Exp.var Flapjack.VarKind.global "frame_mem_ptr")) body14_0 body14_1

def body14_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "scratch_ptr" (Flapjack.Exp.var Flapjack.VarKind.local "q")

def body14_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "q")

def body14_6 : Prog (BitVec 64) :=
.seq body14_4 body14_5

def body14_7 : Prog (BitVec 64) :=
.seq body14_3 body14_6

def body14_8 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body14_7

def body14_9 : Prog (BitVec 64) :=
.seq body14_2 body14_8

def body14_10 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "scratch_ptr") body14_9

def body14_11 : Prog (BitVec 64) :=
.seq body14_3 body14_4

def body14_12 : Prog (BitVec 64) :=
.seq body14_11 body14_5

def body14_13 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body14_12

def body14_14 : Prog (BitVec 64) :=
.seq body14_2 body14_13

def body14_15 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "scratch_ptr") body14_14

def originalData14 : Decl (BitVec 64) :=
.function { name := "scratch_alloc", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body14_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData14 : Decl (BitVec 64) :=
.function { name := "scratch_alloc", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body14_15, returnShape := (Flapjack.Shape.one) }
def original14 := Pancake.PanLang.declToHOL originalData14
def simplified14 := Pancake.PanLang.declToHOL simplifiedData14
end InitECandidate.Proofs.FrontendStages.Declarations
