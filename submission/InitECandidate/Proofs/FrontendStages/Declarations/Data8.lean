import InitECandidate.Proofs.FrontendComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body8_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "trap_with" [Flapjack.Exp.const 1#64]

def body8_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body8_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 2952790016#64, Flapjack.Exp.var Flapjack.VarKind.local "p"])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body8_0 body8_1

def body8_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 2952790016#64) (Flapjack.Exp.var Flapjack.VarKind.local "q")) body8_0 body8_1

def body8_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "heap_ptr" (Flapjack.Exp.var Flapjack.VarKind.local "q")

def body8_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "p")

def body8_6 : Prog (BitVec 64) :=
.seq body8_4 body8_5

def body8_7 : Prog (BitVec 64) :=
.seq body8_3 body8_6

def body8_8 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n",
        Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body8_7

def body8_9 : Prog (BitVec 64) :=
.seq body8_2 body8_8

def body8_10 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "heap_ptr") body8_9

def body8_11 : Prog (BitVec 64) :=
.seq body8_3 body8_4

def body8_12 : Prog (BitVec 64) :=
.seq body8_11 body8_5

def body8_13 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n",
        Flapjack.Exp.const 7#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64]]) body8_12

def body8_14 : Prog (BitVec 64) :=
.seq body8_2 body8_13

def body8_15 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.global "heap_ptr") body8_14

def originalData8 : Decl (BitVec 64) :=
.function { name := "alloc", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body8_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData8 : Decl (BitVec 64) :=
.function { name := "alloc", inline := false, exported := false, params := [("n", Flapjack.Shape.one)], body := body8_15, returnShape := (Flapjack.Shape.one) }
def original8 := Pancake.PanLang.declToHOL originalData8
def simplified8 := Pancake.PanLang.declToHOL simplifiedData8
end InitECandidate.Proofs.FrontendStages.Declarations
