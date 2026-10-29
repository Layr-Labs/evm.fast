import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify41
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body57_0 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r0" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 0#64]

def body57_1 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r1" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r0")]

def body57_2 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r2" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r1")]

def body57_3 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "r3" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r2")]

def body57_4 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r0"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r1"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r2"),
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r3")])

def body57_5 : Prog (BitVec 64) :=
.seq body57_3 body57_4

def body57_6 : Prog (BitVec 64) :=
.dec ("r3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body57_5

def body57_7 : Prog (BitVec 64) :=
.seq body57_2 body57_6

def body57_8 : Prog (BitVec 64) :=
.dec ("r2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body57_7

def body57_9 : Prog (BitVec 64) :=
.seq body57_1 body57_8

def body57_10 : Prog (BitVec 64) :=
.dec ("r1") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body57_9

def body57_11 : Prog (BitVec 64) :=
.seq body57_0 body57_10

def body57_12 : Prog (BitVec 64) :=
.dec ("r0") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body57_11

def originalData57 : Decl (BitVec 64) :=
.function { name := "u256_add", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body57_12, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData57 : Decl (BitVec 64) :=
.function { name := "u256_add", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body57_12, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original57 := Pancake.PanLang.declToHOL originalData57
def simplified57 := Pancake.PanLang.declToHOL simplifiedData57
end InitECandidate.Proofs.FrontendStages.Declarations
