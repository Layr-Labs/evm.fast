import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data687
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate671
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody687_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody687_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody687_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "xl") (Flapjack.Exp.const 0#64)) globalBody687_0 globalBody687_1

def globalBody687_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "yl") (Flapjack.Exp.const 0#64)) globalBody687_0 globalBody687_1

def globalBody687_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ecp_set_inf"
  [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "out"]

def globalBody687_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody687_6 : Prog (BitVec 64) :=
.seq globalBody687_4 globalBody687_5

def globalBody687_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.var Flapjack.VarKind.local "xz", Flapjack.Exp.var Flapjack.VarKind.local "yz"])
  (Flapjack.Exp.const 1#64)) globalBody687_6 globalBody687_1

def globalBody687_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody687_9 : Prog (BitVec 64) :=
.seq globalBody687_7 globalBody687_8

def globalBody687_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "fq_to_mont"
  [Flapjack.Exp.var Flapjack.VarKind.local "y"]

def globalBody687_11 : Prog (BitVec 64) :=
.seq globalBody687_9 globalBody687_10

def globalBody687_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "fq_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def globalBody687_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "fq_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 8797723225643362519#64, Flapjack.Exp.const 2263834496217719225#64,
        Flapjack.Exp.const 3696305541684646532#64, Flapjack.Exp.const 3035258219084094862#64]]

def globalBody687_14 : Prog (BitVec 64) :=
.seq globalBody687_12 globalBody687_13

def globalBody687_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody687_0 globalBody687_1

def globalBody687_16 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "x")

def globalBody687_17 : Prog (BitVec 64) :=
.seq globalBody687_15 globalBody687_16

def globalBody687_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y")

def globalBody687_19 : Prog (BitVec 64) :=
.seq globalBody687_17 globalBody687_18

def globalBody687_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 15230403791020821917#64, Flapjack.Exp.const 754611498739239741#64,
      Flapjack.Exp.const 7381016538464732716#64, Flapjack.Exp.const 1011752739694698287#64])

def globalBody687_21 : Prog (BitVec 64) :=
.seq globalBody687_19 globalBody687_20

def globalBody687_22 : Prog (BitVec 64) :=
.seq globalBody687_21 globalBody687_5

def globalBody687_23 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("u256_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "r"]) globalBody687_22

def globalBody687_24 : Prog (BitVec 64) :=
.seq globalBody687_14 globalBody687_23

def globalBody687_25 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "x"]) globalBody687_24

def globalBody687_26 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fq_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody687_25

def globalBody687_27 : Prog (BitVec 64) :=
.seq globalBody687_11 globalBody687_26

def globalBody687_28 : Prog (BitVec 64) :=
.decCall ("yz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) globalBody687_27

def globalBody687_29 : Prog (BitVec 64) :=
.decCall ("xz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) globalBody687_28

def globalBody687_30 : Prog (BitVec 64) :=
.seq globalBody687_3 globalBody687_29

def globalBody687_31 : Prog (BitVec 64) :=
.decCall ("yl") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "y",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) globalBody687_30

def globalBody687_32 : Prog (BitVec 64) :=
.seq globalBody687_2 globalBody687_31

def globalBody687_33 : Prog (BitVec 64) :=
.decCall ("xl") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "x",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) globalBody687_32

def globalBody687_34 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64],
  Flapjack.Exp.const 32#64]) globalBody687_33

def globalBody687_35 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "data", Flapjack.Exp.const 32#64]) globalBody687_34

def globalData687 : Decl (BitVec 64) :=
.function { name := "bn254_parse_g1", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody687_35, returnShape := (Flapjack.Shape.one) }
def globalOutput687 := Pancake.PanLang.declToHOL globalData687
end InitECandidate.Proofs.FrontendStages.Declarations
