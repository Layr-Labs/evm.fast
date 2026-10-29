import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify177
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body193_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body193_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "n"],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "count", Flapjack.Exp.const 32#64],
        Flapjack.Exp.var Flapjack.VarKind.local "n"]]

def body193_2 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.var Flapjack.VarKind.local "count"])

def body193_3 : Prog (BitVec 64) :=
.seq body193_1 body193_2

def body193_4 : Prog (BitVec 64) :=
.seq body193_0 body193_3

def body193_5 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "count", Flapjack.Exp.const 32#64]]) body193_4

def body193_6 : Prog (BitVec 64) :=
.dec ("count") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.const 5#64)) body193_5

def body193_7 : Prog (BitVec 64) :=
.seq body193_0 body193_1

def body193_8 : Prog (BitVec 64) :=
.seq body193_7 body193_2

def body193_9 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "count", Flapjack.Exp.const 32#64]]) body193_8

def body193_10 : Prog (BitVec 64) :=
.dec ("count") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.const 5#64)) body193_9

def originalData193 : Decl (BitVec 64) :=
.function { name := "pack_bytes", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body193_6, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData193 : Decl (BitVec 64) :=
.function { name := "pack_bytes", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body193_10, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original193 := Pancake.PanLang.declToHOL originalData193
def simplified193 := Pancake.PanLang.declToHOL simplifiedData193
end InitECandidate.Proofs.FrontendStages.Declarations
