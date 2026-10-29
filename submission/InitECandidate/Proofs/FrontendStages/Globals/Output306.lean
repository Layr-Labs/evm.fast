import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data306
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate289
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody306_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 20#64)

def globalBody306_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody306_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 1#64)) globalBody306_0 globalBody306_1

def globalBody306_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "ent"))
  (Flapjack.Exp.const 6#64)) globalBody306_0 globalBody306_1

def globalBody306_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cid")

def globalBody306_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "addr")

def globalBody306_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody306_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_scalar_word"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 3#64,
    Flapjack.Exp.const 1#64, Flapjack.Exp.const 12#64]

def globalBody306_8 : Prog (BitVec 64) :=
.seq globalBody306_6 globalBody306_7

def globalBody306_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def globalBody306_10 : Prog (BitVec 64) :=
.seq globalBody306_8 globalBody306_9

def globalBody306_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "r")

def globalBody306_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "s")

def globalBody306_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody306_14 : Prog (BitVec 64) :=
.seq globalBody306_12 globalBody306_13

def globalBody306_15 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_scalar_u256") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 5#64,
  Flapjack.Exp.const 32#64]) globalBody306_14

def globalBody306_16 : Prog (BitVec 64) :=
.seq globalBody306_11 globalBody306_15

def globalBody306_17 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_scalar_u256") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 4#64,
  Flapjack.Exp.const 32#64]) globalBody306_16

def globalBody306_18 : Prog (BitVec 64) :=
.seq globalBody306_10 globalBody306_17

def globalBody306_19 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("tx_scalar_word") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 2#64,
  Flapjack.Exp.const 8#64, Flapjack.Exp.const 12#64]) globalBody306_18

def globalBody306_20 : Prog (BitVec 64) :=
.seq globalBody306_5 globalBody306_19

def globalBody306_21 : Prog (BitVec 64) :=
.decCall ("addr") (Flapjack.Shape.one) ("tx_fixed_bytes") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 1#64,
  Flapjack.Exp.const 20#64]) globalBody306_20

def globalBody306_22 : Prog (BitVec 64) :=
.seq globalBody306_4 globalBody306_21

def globalBody306_23 : Prog (BitVec 64) :=
.decCall ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_scalar_u256") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "ent"), Flapjack.Exp.const 0#64,
  Flapjack.Exp.const 32#64]) globalBody306_22

def globalBody306_24 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "recs",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 120#64]]) globalBody306_23

def globalBody306_25 : Prog (BitVec 64) :=
.seq globalBody306_3 globalBody306_24

def globalBody306_26 : Prog (BitVec 64) :=
.decCall ("ent") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) globalBody306_25

def globalBody306_27 : Prog (BitVec 64) :=
.seq globalBody306_2 globalBody306_26

def globalBody306_28 : Prog (BitVec 64) :=
.decCall ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst"),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst"),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody306_27

def globalBody306_29 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst"))) globalBody306_28

def globalBody306_30 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "recs",
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst")])

def globalBody306_31 : Prog (BitVec 64) :=
.seq globalBody306_29 globalBody306_30

def globalBody306_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody306_31

def globalBody306_33 : Prog (BitVec 64) :=
.decCall ("recs") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst"), Flapjack.Exp.const 120#64]]) globalBody306_32

def globalBody306_34 : Prog (BitVec 64) :=
.decCall ("lst") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]) globalBody306_33

def globalData306 : Decl (BitVec 64) :=
.function { name := "decode_authorizations", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := globalBody306_34, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput306 := Pancake.PanLang.declToHOL globalData306
end InitECandidate.Proofs.FrontendStages.Declarations
