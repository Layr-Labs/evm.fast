import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data295
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate279
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody295_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def globalBody295_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "balance")]

def globalBody295_2 : Prog (BitVec 64) :=
.seq globalBody295_0 globalBody295_1

def globalBody295_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
        Flapjack.Exp.const 8#64],
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "balance")]

def globalBody295_4 : Prog (BitVec 64) :=
.seq globalBody295_2 globalBody295_3

def globalBody295_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
        Flapjack.Exp.const 16#64],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "balance")]

def globalBody295_6 : Prog (BitVec 64) :=
.seq globalBody295_4 globalBody295_5

def globalBody295_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
        Flapjack.Exp.const 24#64],
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "balance")]

def globalBody295_8 : Prog (BitVec 64) :=
.seq globalBody295_6 globalBody295_7

def globalBody295_9 : Prog (BitVec 64) :=
Flapjack.Prog.break

def globalBody295_10 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody295_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
        Flapjack.Exp.var Flapjack.VarKind.local "z"]))
  (Flapjack.Exp.const 0#64)) globalBody295_9 globalBody295_10

def globalBody295_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "z"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "z", Flapjack.Exp.const 1#64])

def globalBody295_13 : Prog (BitVec 64) :=
.seq globalBody295_11 globalBody295_12

def globalBody295_14 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 32#64)) globalBody295_13

def globalBody295_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "wb"])

def globalBody295_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "wsl"])

def globalBody295_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "off"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.var Flapjack.VarKind.local "wc"])

def globalBody295_18 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.const 248#64)

def globalBody295_19 : Prog (BitVec 64) :=
.seq globalBody295_17 globalBody295_18

def globalBody295_20 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "off", Flapjack.Exp.const 2#64])

def globalBody295_21 : Prog (BitVec 64) :=
.seq globalBody295_19 globalBody295_20

def globalBody295_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "off")

def globalBody295_23 : Prog (BitVec 64) :=
.seq globalBody295_21 globalBody295_22

def globalBody295_24 : Prog (BitVec 64) :=
.decCall ("wc") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "code_hash", Flapjack.Exp.const 32#64]) globalBody295_23

def globalBody295_25 : Prog (BitVec 64) :=
.seq globalBody295_16 globalBody295_24

def globalBody295_26 : Prog (BitVec 64) :=
.decCall ("wsl") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "storage_root", Flapjack.Exp.const 32#64]) globalBody295_25

def globalBody295_27 : Prog (BitVec 64) :=
.seq globalBody295_15 globalBody295_26

def globalBody295_28 : Prog (BitVec 64) :=
.decCall ("wb") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "z"],
  Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "z"]]) globalBody295_27

def globalBody295_29 : Prog (BitVec 64) :=
.seq globalBody295_14 globalBody295_28

def globalBody295_30 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody295_29

def globalBody295_31 : Prog (BitVec 64) :=
.seq globalBody295_8 globalBody295_30

def globalBody295_32 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_word") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "off"],
  Flapjack.Exp.var Flapjack.VarKind.local "nonce"]) globalBody295_31

def globalBody295_33 : Prog (BitVec 64) :=
.dec ("off") (Flapjack.Shape.one) (Flapjack.Exp.const 2#64) globalBody295_32

def globalData295 : Decl (BitVec 64) :=
.function { name := "encode_account", inline := false, exported := false, params := [("nonce", Flapjack.Shape.one),
  ("balance", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("storage_root", Flapjack.Shape.one), ("code_hash", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody295_33, returnShape := (Flapjack.Shape.one) }
def globalOutput295 := Pancake.PanLang.declToHOL globalData295
end InitECandidate.Proofs.FrontendStages.Declarations
